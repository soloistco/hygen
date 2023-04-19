---
to: <%= absPath %>/index.tsx
---
import { HTMLAttributes, FC, ReactNode } from "react";
import classNames from "classnames/bind";

import style from "./index.module.scss";

const cn = classNames.bind(style);

interface Props extends HTMLAttributes<HTMLElement> {
  className: string
  children: ReactNode | ReactNode[]
};

const <%= name %>: FC<Props> = ({ className, children }) => {
  return <div className={cn("wrapper", className)}>{children}</div>;
};

export default <%= name %>;