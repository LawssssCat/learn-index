
> + prettier's official website - <https://prettier.io/>
> + :star: prettier's official docs - <https://prettier.io/docs/en/index.html>
> + vscode marketplace introduction - <https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode>

## Install & Pretty

> prettier-docs: install - <https://prettier.io/docs/en/install.html>

Install cli and create it's config file.

```bash
npm install --save-dev --save-exact prettier
echo {}> .prettierrc.json
```

If necessary, you can create `.prettierignore` file to tell the cli which file don't need to be prettied.

```txt
# Ignore artifacts:
package-lock.json
```

Then run cli to pretty files.

```bash
npx prettier --write .
```

e.g. 

```bash
E:\cash\test\t4>npx prettier --write .
.prettierrc.json 34ms
commitlint.config.js 12ms
package.json 3ms
```

```js
// before 
module.exports       =                     
{


  
  extends: [            "@commitlint/config-conventional"
  ],
};

// after 
module.exports = {
  extends: ["@commitlint/config-conventional"],
};

```

## Check 

Below command can help you to find what file need to be prettied.

```bash
npx prettier --check .
```

e.g.

```bash
E:\cash\test\t4>npx prettier --check .
Checking formatting...
[warn] commitlint.config.js
[warn] Code style issues found in the above file(s). Forgot to run Prettier?
```

## Integrate

> official docs: Editor Integration - <https://prettier.io/docs/en/editors.html>

### Integrate into vscode

> github: Prettier Formatter for Visual Studio Code - <https://github.com/prettier/prettier-vscode>

Install the [plug](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) into vscode.

add settings in vscode

```json
// include for all
"editor.defaultFormatter": "esbenp.prettier-vscode", 
// include specially 
"[javascript]": { 
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  // format on save
  "editor.formatOnSave": false
}
// exclude specially 
"[json]": { 
  "editor.defaultFormatter": "<another formatter>"
}
```

### Integrate ESLint

> official docs: Integrate ESLint - <https://prettier.io/docs/en/install.html#eslint-and-other-linters>

To make ESLint and Prettier play nice with each other, we needs to install [eslint-config-prettier](https://github.com/prettier/eslint-config-prettier#installation). 

It turns off all ESLint rules that are unnecessary or might conflict with Prettier. 

```bash
npm install --save-dev eslint-config-prettier
```

Then, add "prettier" to the "extends" array in your `.eslintrc.*` file.

```json
{
  "extends": [
    "some-other-config-you-use",
    "prettier"
  ]
}
```

## Plugs 

> prettier-docs: plugs - <https://prettier.io/docs/en/plugins.html>

