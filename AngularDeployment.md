# Angular Deployment

## Angular Deployment on Amazon EC2

## Angular Deployment on GitHub Pages

Step |   Description   |  Command
--- |   --- |   ---  |  ---
1 |   Install angular-cli-ghpages globally |   ` npm install -g angular-cli-ghpages `  
2 |   Build project and set correct base href | ` ng build --prod --base-href "https://<user-name>.github.io/<repo>/" `
3 |  Run angular-cli-ghpages | ` ngh `