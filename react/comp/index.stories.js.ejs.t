---
to: <%= absPath %>/<%= name %>.stories.js
---
import { <%= name %> } from "./<%= name %>";

export default {
  title: "<%= category %>/<%= name %>",
  component: <%= name %>,
  args: {
    className: "custom-class",
  },
  parameters: {
    layout: "centered",
    backgrounds: {
      default: "light",
    },
  },
};

const Template = (args) => <<%= name %> {...args} />;

export const Basic = Template.bind({});
Basic.args = {};
