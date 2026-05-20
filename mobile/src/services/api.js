const API_BASE_URL = process.env.EXPO_PUBLIC_API_URL || 'http://localhost:3333';

async function request(path, options = {}) {
  const headers = {
    Accept: 'application/json',
    'Content-Type': 'application/json',
    ...options.headers,
  };

  const response = await fetch(`${API_BASE_URL}${path}`, {
    ...options,
    headers,
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
