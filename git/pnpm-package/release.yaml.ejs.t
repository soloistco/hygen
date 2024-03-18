---
to: <%= path %>/release.yml
---
name: Release

on:
  release:
    types: [published]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - uses: pnpm/action-setup@v2
        name: 📦 Install pnpm
        with:
          version: 8
          run_install: false

      - name: Install Node.js
        uses: actions/setup-node@v3
        with:
          node-version-file: ".nvmrc"
          cache: pnpm
          registry-url: https://registry.npmjs.org

      - name: Install dependencies
        run: pnpm install --frozen-lockfile

      - name: Publish 🚀
        shell: bash
        run: pnpm publish packages/components --access public --no-git-checks
        env:
          NODE_AUTH_TOKEN: ${{ secrets.NPM_TOKEN }}
