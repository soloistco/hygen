---
to: <%= absPath %>/<%= name %>.tsx
---
import { FC } from "react";
import classNames from "classnames/bind";

import style from "./<%= name %>.module.scss";
import { Props } from "./<%= name %>.types";

const cn = classNames.bind(style);

export const <%= name %>: FC<Props> = ({ className, children }) => {
  return <div className={cn("wrapper", className)}>{children}</div>;
};

export { Props as <%= name %>Props };