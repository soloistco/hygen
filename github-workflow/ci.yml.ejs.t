---
to: <%= absPath %>/.github/workflows/ci.yml
---
name: CI

on:
  push:
    branches: [develop, main]

env:
  NEXT_PUBLIC_BASEURL: http://localhost:3000
  SHOPIFY_API_URL: ${{secrets.SHOPIFY_API_URL}}
  SHOPIFY_ACCESS_TOKEN: ${{secrets.SHOPIFY_ACCESS_TOKEN}}
  CMS_URL: ${{secrets.CMS_URL}}
  CMS_PUBLISHED_TOKEN: ${{secrets.CMS_PUBLISHED_TOKEN}}
  CMS_PREVIEW_SECRET: ${{secrets.CMS_PREVIEW_SECRET}}

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
        with:
          fetch-depth: 0 # 👈 Required to retrieve git history for Chromatic
      - uses: actions/setup-node@v3
        with:
          node-version: 16

      - name: 📦 Cache node_modules & .next files
        uses: actions/cache@v3
        with:
          path: |
            ~/.npm
            ${{ github.workspace }}/.next/cache
          key: ${{ runner.os }}-nextjs-${{ hashFiles('**/package-lock.json') }}-${{ hashFiles('**.[jt]s', '**.[jt]sx') }}
          restore-keys: |
            ${{ runner.os }}-nextjs-${{ hashFiles('**/package-lock.json') }}-

      - name: 🚨 Install dependencies
        run: npm ci

      - name: 👀 Run linter
        uses: sibiraj-s/action-eslint@v2
        with:
          eslint-args: "--ignore-path=.gitignore --quiet"
          extensions: "js,jsx,ts,tsx,vue"
          annotations: true

      - name: 🛠 Build Project
        run: npm run build

      - name: 🔖 Create a Release
        if: github.event_name == 'push' && github.ref == 'refs/heads/main'
        run: npx semantic-release
        env:
          GITHUB_TOKEN: ${{ secrets.CUSTOM_TOKEN }}
