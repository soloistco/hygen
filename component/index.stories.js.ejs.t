---
to: <%= absPath %>/index.stories.js
---
import <%= name %> from "./index";

export default {
  title: "<%= category %>/<%= name %>",
  component: <%= name %>,
  args: {
    className: "custom-class",
  },
  parameters: {
    layout: "centered",
  },
};

const Template = args => <<%= name %> {...args} />;

export const Basic = Template.bind({});
Basic.args = {};
