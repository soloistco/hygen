module.exports = {
  prompt: ({ inquirer }) => {
    const questions = [
      {
        type: "input",
        name: "baseurl",
        message: "What is the base URL?",
      },
      {
        type: "select",
        name: "release",
        message: "Do you need to create releases?",
        choices: [false, true],
      },
    ];

    return inquirer.prompt(questions).then((answers) => ({ ...answers, path: ".github/workflow" }));
  },
};
