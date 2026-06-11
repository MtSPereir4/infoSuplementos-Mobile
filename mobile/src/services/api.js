import Constants from 'expo-constants';
import { NativeModules, Platform } from 'react-native';

function isPrivateLanHost(host) {
  return (
    /^10\./.test(host) ||
    /^172\.(1[6-9]|2\d|3[0-1])\./.test(host) ||
    /^192\.168\./.test(host)
  );
}

function getHostFromUrl(value) {
  if (!value) {
    return null;
  }

  const match = value.match(/^(?:\w+:\/\/)?([^/:]+)/);
  return match?.[1] || null;
}

function getExpoHostCandidates() {
  return [
    Constants.expoConfig?.hostUri,
    Constants.manifest?.debuggerHost,
    Constants.manifest2?.extra?.expoClient?.hostUri,
    NativeModules.SourceCode?.scriptURL,
  ];
}

function getExpoDevServerApiUrl() {
  if (Platform.OS === 'web') {
    return 'http://localhost:3333';
  }

  for (const candidate of getExpoHostCandidates()) {
    const host = getHostFromUrl(candidate);

    if (host && isPrivateLanHost(host)) {
      return `http://${host}:3333`;
    }
  }

  if (Platform.OS === 'android') {
    return 'http://10.0.2.2:3333';
  }

  return null;
}

const API_BASE_URL =
  process.env.EXPO_PUBLIC_API_URL ||
  getExpoDevServerApiUrl() ||
  'http://localhost:3333';

async function request(path, options = {}) {
  const headers = {
    Accept: 'application/json',
    'Content-Type': 'application/json',
    ...options.headers,
  };

  const response = await fetch(`${API_BASE_URL}${path}`, {
    ...options,
    headers,
  }).catch(() => {
    throw new Error(
      `Não foi possível conectar à API em ${API_BASE_URL}. ` +
        'Confirme se o backend está rodando no Docker e se o celular está na mesma rede Wi-Fi da máquina.'
    );
  });

  const contentType = response.headers.get('content-type');
  const data = contentType?.includes('application/json')
    ? await response.json()
    : null;

  if (!response.ok) {
    const message =
      data?.error || data?.message || 'Erro ao comunicar com a API.';
    throw new Error(message);
  }

  return data;
}

export function loginUser(credentials) {
  return request('/auth/login', {
    method: 'POST',
    body: JSON.stringify(credentials),
  });
}

export function registerUser(userData) {
  return request('/auth/register', {
    method: 'POST',
    body: JSON.stringify(userData),
  });
}

export function getSupplements(filters = {}) {
  const params = new URLSearchParams();

  Object.entries(filters).forEach(([key, value]) => {
    if (value) {
      params.append(key, value);
    }
  });

  const query = params.toString();
  return request(`/supplements${query ? `?${query}` : ''}`);
}

export function getSupplementById(id) {
  return request(`/supplements/${id}`);
}

export function addFavorite(supplementId, token) {
  return request(`/favorites/${supplementId}`, {
    method: 'POST',
    headers: {
      Authorization: `Bearer ${token}`,
    },
  });
}

export { API_BASE_URL };
