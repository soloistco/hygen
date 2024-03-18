---
to: <%= absPath %>/<%= name %>.tsx
---
import { FC } from "react";
import classNames from "classnames/bind";

import style from "./<%= name %>.module.scss";
import { Props } from "./<%= name %>.types";

const cn = classNames.bind(style);

const <%= name %>: FC<Props> = ({ className, children }) => {
  return <div className={cn("wrapper", className)}>{children}</div>;
};

export { <%= name %>, type Props as <%= name %>Props };