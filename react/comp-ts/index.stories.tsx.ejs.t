---
to: <%= absPath %>/<%= name %>.stories.tsx
---
import { StoryFn, Meta } from "@storybook/react";
import { <%= name %> } from "./<%= name %>";

export default {
  title: "<%= category %>/<%= name %>",
  component: Test,
  args: {
    className: "custom-class",
    children: "Hello World!",
  },
  parameters: {
    layout: "fullscreen",
  },
} as Meta;

const Template: StoryFn<typeof Test> = (args) => <Test {...args} />;

export const Basic = Template.bind({});
Basic.args = {};