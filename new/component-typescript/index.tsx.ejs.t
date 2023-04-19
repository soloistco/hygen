---
to: <%= absPath %>/index.tsx
---
import { HTMLAttributes, FC, ReactNode } from "react";
import classNames from "classnames/bind";

import style from "./index.module.scss";

const cn = classNames.bind(style);

export interface Props extends HTMLAttributes<HTMLElement> {
  className?: string | undefined;
  children?: ReactNode | ReactNode[] | null;
}

export const <%= name %>: FC<Props> = ({ className, children }) => {
  return <div className={cn("wrapper", className)}>{children}</div>;
};
