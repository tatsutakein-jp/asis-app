import { execSync } from "node:child_process";

export function fetchGitRootDirPath(): string {
  const gitRevParse = execSync("git rev-parse --show-toplevel", {
    encoding: "utf-8",
  });
  return gitRevParse.trim();
}
