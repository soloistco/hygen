---
to: <%= absPath %>/index.stories.ts
---
import <%= name %> from "./index";

export default {
  title: "<%= category %>/<%= name %>",
  component: <%= name %>,
  args: {
    className: "custom-class",
  },
  parameters: {
    layout: "fullscreen",
  },
};

const Template = args => <<%= name %> {...args} />;

export const Basic = Template.bind({});
Basic.args = {};
