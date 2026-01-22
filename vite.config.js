import { defineConfig } from 'vite';
import { resolve } from 'path';

export default defineConfig({
  root: './frontend',
  build: {
    outDir: '../dist',
    emptyOutDir: true
  },
  resolve: {
    alias: {
      '@': resolve(__dirname, 'frontend/src')
    }
  },
  define: {
    global: 'globalThis'
  },
  optimizeDeps: {
    include: ['three', '@proton/web-sdk', '@proton/js']
  },
  server: {
    port: 3000,
    open: true
  }
});
