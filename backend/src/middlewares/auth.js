import jwt from 'jsonwebtoken';

export default function auth(req, res, next) {
  const authHeader = req.headers.authorization;
  const [, token] = authHeader?.split(' ') || [];

  if (!token) {
    return res.status(401).json({ error: 'Token não informado.' });
  }

  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded;
    return next();
  } catch {
    return res.status(401).json({ error: 'Token inválido.' });
  }
}
