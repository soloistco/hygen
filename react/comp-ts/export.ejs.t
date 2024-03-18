---
inject: true
to: <%= categoryPath %>/index.ts
append: true
---
export { <%= name %>, type <%= name %>Props } from "./<%= name %>/<%= name %>";