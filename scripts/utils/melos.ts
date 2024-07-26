import { execSync } from "node:child_process";

export interface MelosPackage {
  name: string;
  version: string;
  private: boolean;
  location: string;
  type: number;
}

export function fetchMelosPackageList(): MelosPackage[] {
  const melosPackageListString = execSync("melos list --json", {
    encoding: "utf-8",
  });
  return JSON.parse(melosPackageListString) as MelosPackage[];
}
