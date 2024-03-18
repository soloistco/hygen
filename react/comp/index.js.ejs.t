---
to: <%= absPath %>/<%= name %>.js
---
import PropTypes from "prop-types";
import classNames from "classnames/bind";

import styles from "./<%= name %>.module.scss";

const cn = classNames.bind(styles);

export default function <%= name %>({ className }) {
  return <div className={cn("wrapper", className)}><%= name %></div>;
}

<%= name %>.propTypes = {
  className: PropTypes.string,
};

<%= name %>.defaultProps = {
  className: "",
};
