import { networkInterfaces } from 'node:os';
import { writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

function isPrivateLanAddress(address) {
  return (
    /^10\./.test(address) ||
    /^172\.(1[6-9]|2\d|3[0-1])\./.test(address) ||
    /^192\.168\./.test(address)
  );
}

function getLanAddress() {
  const interfaces = networkInterfaces();

  for (const addresses of Object.values(interfaces)) {
    for (const info of addresses || []) {
      if (
        info.family === 'IPv4' &&
        !info.internal &&
        isPrivateLanAddress(info.address)
      ) {
        return info.address;
      }
    }
  }

  return null;
}

const lanAddress = process.env.API_HOST || getLanAddress();

if (!lanAddress) {
  console.warn(
    'Nao foi possivel detectar o IP LAN automaticamente. Configure EXPO_PUBLIC_API_URL manualmente ou rode com API_HOST=SEU_IP_LOCAL.'
  );
  process.exit(0);
}

const apiUrl = `http://${lanAddress}:3333`;
const envPath = resolve(process.cwd(), '.env.local');

writeFileSync(envPath, `EXPO_PUBLIC_API_URL=${apiUrl}\n`);
console.log(`API do Expo configurada em ${apiUrl}`);
