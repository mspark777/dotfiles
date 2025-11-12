import { defineConfig } from "eslint/config";
import eslintPluginPrettierRecommended from "eslint-plugin-prettier/recommended";
import eslintPluginJsonc from "eslint-plugin-jsonc";

export default defineConfig(
  eslintPluginPrettierRecommended,
  ...eslintPluginJsonc.configs["flat/recommended-with-jsonc"],
  ...eslintPluginJsonc.configs["flat/recommended-with-json"],
);
