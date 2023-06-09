# Typescript Guidelines

Use following tools and configuration to maintain good code quality with Typescript.

## Tools

- VSCode (not a must have but the tutorial relies on it)
- ESLinter
- Typescript-EsLint
- Prettier

We use Prettier as a code styling tool. Prettier is an opinionated code formatter which means only a subset of the styling can be configured, all other rules are fixed and can't be changed. This means we don't need to invest much time in styling rules and what would "the best" code style. For more information about the styling rules see the Prettier homepage.

Additionally we use ESLinter to do the static code analysis beside the Typescript compiler. This should help us to find and avoid CodeSmells and Code which could lead to wrong behaviour.

## Installation and Configurations

Follow this tutorial to install and configure VSCode with ESLint and Prettier: https://dev.to/chgldev/getting-prettier-eslint-and-vscode-to-work-together-3678

Tutorial to start with typescript-eslint: https://github.com/typescript-eslint/typescript-eslint/blob/master/docs/getting-started/linting/README.md

## ESLint

EsLint is a pluggable Javascript code linter. This means it needs a plugin to work with typescript.

This tool had been choosen because it's the recommended tool to use after TSLint is not maintained anymore. You can read more here.

The typescript-eslint extension is what you need to get EsLint working with Typescript.

## Rule Explanation

{
	"arrowParens": "always", 		// always add parens around a arrow function parameter
	"bracketSpacing": true, 		// insert spaces after/before brackets
	"endOfLine": "auto", 			// just normalize line endings
	"htmlWhitespaceSensitivity": "css", 	// std value should be good for most cases
	"insertPragma": false, 			// do not insert a prettier format command into the file
	"jsxBracketSameLine": false, 		// default value (until now we don't use JSX)
	"jsxSingleQuote": false, 		// default value (until now we don't use JSX)
	"printWidth": 120, 			// max line length
	"proseWrap": "preserve",		// only needed for markdown, std value, change if needed
	"quoteProps": "as-needed", 		// only add property quotes if they are needed
	"requirePragma": false, 		// do not require a prettier format comment
	"semi": true, 				// print semicolons at the end of statements
	"singleQuote": true, 			// use single quotes instead of double
	"tabWidth": 4, 				// one tab is 4 spaces
	"trailingComma": "es5", 		// everywhere where valid for es5
	"useTabs": false, 			// use spaces instead of tabs
	"vueIndentScriptAndStyle": false 	// not used by now, change if needed
}