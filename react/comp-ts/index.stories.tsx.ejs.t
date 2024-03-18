---
to: <%= absPath %>/<%= name %>.stories.tsx
---
import { StoryFn, Meta } from "@storybook/react";
import { <%= name %> } from "./<%= name %>";

export default {
  title: "<%= category %>/<%= name %>",
  component: <%= name %>,
  args: {
    className: "custom-class",
    children: "Hello World!",
  },
  parameters: {
    layout: "centered",
  },
  tags: ['autodocs'],
} satisfies Meta<typeof <%= name %>>;

const Template: StoryFn<typeof <%= name %>> = (args) => <<%= name %> {...args} />;

export const Basic = Template.bind({});
Basic.args = {};
