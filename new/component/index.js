module.exports = {
  prompt: ({ inquirer }) => {
    const questions = [
      {
        type: "select",
        name: "category",
        message: "Which Atomic design level?",
        choices: ["atoms", "molecules", "organisms", "templates"],
      },
      {
        type: "input",
        name: "name",
        message: "What is the component name?",
      },
      {
        type: "input",
        name: "dir",
        message: "Where is the directory(Optional)",
      },
    ];

    return inquirer.prompt(questions).then((answers) => {
      const { category, name, dir } = answers;
      const categoryPath = `src/components/${category}`;
      const componentDir = dir ? `${dir}/` : "";
      const componentPath = `${componentDir}${name}`;
      const absPath = `${categoryPath}/${componentPath}`;

      return { ...answers, categoryPath, componentPath, absPath, category };
    });
  },
};
