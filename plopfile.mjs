import { exec } from "node:child_process";
import { snakeCase } from "change-case";
import {
  generateFeaturePackage,
  generateFirebaseOptions,
} from "./templates/index.mjs";

/**
 * @param {import("plop").NodePlopAPI} plop
 */
export default function (plop) {
  // Register a custom action type
  plop.setActionType("melosBootstrap", (answers, config, plop) => {
    return new Promise((resolve, reject) => {
      exec("melos bs", (error, stdout, stderr) => {
        if (error) {
          console.error(`Error: ${error.message}`);
          reject(error);
          return;
        }
        if (stderr) {
          console.error(`Stderr: ${stderr}`);
        }
        console.log(`Stdout: ${stdout}`);
        resolve("Melos bs command executed successfully");
      });
    });
  });

  // Register a custom helper
  plop.setHelper("snakeCase", (text) => snakeCase(text));

  // Register a generator
  plop.setGenerator("feature", generateFeaturePackage());
  plop.setGenerator("firebase_options", generateFirebaseOptions());
}
