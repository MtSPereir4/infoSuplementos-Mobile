import js from '@eslint/js';
import prettierPlugin from 'eslint-plugin-prettier';
import globals from 'globals';

export default [
  {
    ignores: [
      'node_modules',
      '.vscode',
      '*.config.js',
      '*.lock',
      'mobile/node_modules',
      'backend/node_modules',
    ],
    languageOptions: {
      globals: {
        ...globals.node,
      },
    },
  },
  js.configs.recommended,
  {
    plugins: {
      prettier: prettierPlugin,
    },
    rules: {
      'prettier/prettier': 'error',
      'no-unused-vars': 'warn',
      'no-console': 'off',
    },
  },
];
