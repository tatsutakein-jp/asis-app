import { generateFirebaseOptions } from "./templates/firebase-options/index.mjs";

/**
 * @param {import("plop").NodePlopAPI} plop
 */
export default function (plop) {
  plop.setGenerator("firebase_options", generateFirebaseOptions());
}
