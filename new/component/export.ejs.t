---
inject: true
to: <%= categoryPath %>/index.js
append: true
---
export { default as <%= name %> } from "./<%= name %>";