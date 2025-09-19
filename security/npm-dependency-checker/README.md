# NPM Package Detector

Small tool to check if your npm project contains packages. Tool reads a list like in (compromised-packages.txt)[compromised-package.txt]
and searches your project for the mentioned package versions. Matching versions are printed out.

You can run the script from your bash with this command
```bash
	bash <(curl -s https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/refs/heads/main/security/npm-dependency-checker/check-packages.sh)
```