import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// Served at the repo subpath on GitHub Pages (https://hirufanullah.github.io/hirufan_portfolio/),
// but at root ('/') during local dev.
export default defineConfig(({ command }) => ({
  base: command === 'build' ? '/hirufan_portfolio/' : '/',
  plugins: [react()],
  server: {
    port: 5173,
    open: true,
  },
}))
