/**
 * @return Partial<PlopGeneratorConfig>
 */
export function generateFirebaseOptions() {
  return {
    description: "Generate Firebase options for different flavors",
    prompts: [
      {
        type: "list",
        name: "flavor",
        message: "What is flavor?",
        choices: ["stg", "prod"],
      },
      {
        type: "input",
        name: "apiKey",
        message: "What is api key?",
      },
      {
        type: "input",
        name: "webAppId",
        message: "What is web app id?",
      },
      {
        type: "input",
        name: "androidAppId",
        message: "What is android app id?",
      },
      {
        type: "input",
        name: "iosAppId",
        message: "What is ios app id?",
      },
      {
        type: "input",
        name: "messagingSenderId",
        message: "What is messaging sender id?",
      },
      {
        type: "input",
        name: "projectId",
        message: "What is project id?",
      },
      {
        type: "input",
        name: "measurementId",
        message: "What is measurement id?",
      },
      {
        type: "input",
        name: "iosBundleId",
        message: "What is ios bundle id?",
      },
    ],
    actions: [
      {
        type: "add",
        path: "app/mobile/lib/flavor/{{flavor}}/firebase_options.dart",
        templateFile:
          "templates/firebase-options/template/firebase_options.dart.hbs",
      },
    ],
  };
}
