---
to: <%= absPath %>/index.ts
---
import { HTMLDivAttributes, FC, ReactNode } from "react";
import classNames from "classnames/bind";

import style from "./index.module.scss";

const cn = classNames.bind(style);

interface Props extends HTMLDivAttributes<HTMLDivElement> {
  className: string
  children: ReactNode | ReactNode[]
};

const <%= name %>: FC<Props> = ({ className, children }) => {
  return <div className={cn("wrapper", className)}>{children}</div>;
};

export default <%= name %>;