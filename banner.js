// const childProcess = require("child_process")

module.exports = function banner() {
  // const commit = childProcess.execSync("git rev-parse --short HEAD")
  // const user = childProcess.execSync("git config user.name")
  const commit = "git commit version";
  const user = "git user";
  const date = new Date().toLocaleString();

  return (
    `commitVersion: ${commit}` + `Build Date: ${date}\n` + `Author: ${user}`
  );
};
