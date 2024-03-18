---
to: <%= absPath %>/<%= name %>.types.ts
---
import { HTMLAttributes, ReactNode } from "react";

export interface Props extends HTMLAttributes<HTMLElement> {
  className?: string | undefined;
  children?: ReactNode | ReactNode[] | null;
}