# React Deployment

## React Deployment on GitHub Pages

Step |   Description   |  Command
--- |   --- |   ---  
1 |   Install create-react-app |   `npm install -g create-react-app`  
2 |   Create React app |   `create-react-app website`  
3 |   In client directory (main React app) run app |   `npm start`  
4 |   Create GitHub Repository |   [Git](Git.md)  
5 |   Install gh-pages |   `npm install --save gh-pages`  
6 |   Modify package.json |   `"homepage": "https://ccasil.github.io/repo/"`  
| |   Predeploy specifies the command to build before deployment | `"predeploy": "npm run build"`  
| |   Deploy specifies which branch and directory to deploy | `"deploy": "gh-pages -d build"`  
7 |  Deploy application  |   `npm run deploy`  

## References

**[codeburst](https://codeburst.io/deploy-react-to-github-pages-to-create-an-amazing-website-42d8b09cd4d)**