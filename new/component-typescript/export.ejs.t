---
inject: true
to: <%= categoryPath %>/index.ts
append: true
---
export { default as <%= name %> } from "./<%= name %>";