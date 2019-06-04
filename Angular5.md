# Angular 5

**[Official Angular Website](https://angular.io/)**

## MEAN (MongoDB, Express, Angular, Node.js) CRUD (Create, Read, Update, Delete) Overview

## 0. Set Up

1. Create new project folder and change into its directory
2. Touch a server.js file as an entry point for our server
3. Initiate an empty package.json file  
`npm init -y`
4. Install all middleware needed for the project (all of the modules for the server) 
    (note: Can detect dependencies by deleting node_modules folder and reinstalling modules 'npm install')  
`npm install _____ --save`  

## 1. Establish server.js

1. Import middleware:  

```JavaScript
var express = require('express');  
var bodyParser = require('body-parser');  
var path = require('path');  
var mongoose = require('mongoose');  
var session = require('session');  
```

2. Instantiate Express Application:  

```JavaScript
var app = express()
```

3. Attach the View Engine. Make a new directory in your project folder called views, and touch a file called index.ejs  

```JavaScript
app.set('view engine', 'ejs')  
app.set('views', path.join(__dirname + '/views'));
```

4. Allow yourself to access POST data  

```JavaScript
app.use(bodyParser.urlencoded({extended: true}))
```

5. Connect Mongoose to MongoDB  

```JavaScript
mongoose.connect('mongodb://localhost/project_name')
```

6. Create a Schema for your database objects  

```JavaScript
var exampleSchema = new mongoose.Schema({ 
    name: {type: String, required: [true, "You need a name"], minlength: 1}  
})
mongoose.model('Example', exampleSchema)
var Example = mongoose.model('Example')
```

7. At the end of file, create a listen function that watches for HTTP requests

```JavaScript
app.listen(8000, function(){  
    console.log("running this express project on port 8000")
})
```

## 2. Add CRUD Routes

```JavaScript
// Retrieve profiles
app.get('/profile', function (req, res) {
    Profile.find({}, null, { sort: '-firstname' }, function (err, profile) {
        console.log(profile)
        if (err) {
            res.json({ message: "Error", err: err })
        } else {
            res.json({ message: "Success", data: profile })
        }
    })
})

// Create a new profile
app.post('/newprofile', function (req, res) {
    let newProfile = new Profile(req.body);
    console.log("creating new profile");
    newProfile.save(function (err) {
        if (err) {
            console.log("error creating")
            res.json({ message: "Error creating a profile", err: err });
        } else {
            res.json({ message: "Success", id: newProfile._id })
        }
    })
})

// Update profile
app.put('/editprofile/:id', function (req, res) {
    console.log("editing profile")
    Profile.findOne({ _id: req.body.id }, function (err, profile) {
        console.log(profile)
        profile.firstname = req.body.firstname;
        profile.lastname = req.body.lastname;
        profile.resume = req.body.resume;
        profile.linkedin = req.body.linkedin;
        profile.github = req.body.github;
        profile.personal = req.body.personal;
        profile.save(function (err) {
            if (err) {
                res.json({ message: "Error", err: err });
            } else {
                res.json({ message: "Success", id: profile._id })
            }
        })
    })
})

// Delete profile
app.delete('/deleteprofile/:id', function (req, res) {
    console.log("deleting profile id: ", req.params.id)
    Profile.remove({ _id: req.params.id }, function (err) {
        if (err) {
            res.json({ message: "Error", err: err })
        } else {
            res.json({ message: "Success" })
        }
    })
})

// Retrieve all jobs
app.get('/jobs', function (req, res) {
    Job.find({}, null, { sort: '-rating' }, function (err, jobs) {
        console.log(jobs)
        if (err) {
            res.json({ message: "Error", err: err })
        } else {
            res.json({ message: "Success", data: jobs })
        }
    })
})

// Create a new job
app.post('/new', function (req, res) {
    let newJob = new Job(req.body);
    console.log("creating new job");
    newJob.save(function (err) {
        if (err) {
            console.log("error creating")
            res.json({ message: "Error creating a job", err: err });
        } else {
            res.json({ message: "Success", id: newJob._id })
        }
    })
})

// Retrieve job
app.get('/findjob/:id', function (req, res) {
    Job.findOne({ _id: req.params.id }, function (err, jobs) {
        console.log(jobs)
        if (err) {
            res.json({ message: "Error", err: err })
        } else {
            res.json({ message: "Success", data: jobs })
        }
    })
})

// Update job
app.put('/edit/:id', function (req, res) {
    console.log("editing job")
    Job.findOne({ _id: req.body.id }, function (err, job) {
        console.log(job)
        job.company = req.body.company;
        job.title = req.body.title;
        job.category = req.body.category;
        job.linktopost = req.body.linktopost;
        job.status = req.body.status;
        job.notes = req.body.notes;
        job.save(function (err) {
            if (err) {
                res.json({ message: "Error", err: err });
            } else {
                res.json({ message: "Success", id: job._id })
            }
        })
    })
})


// Delete job
app.delete('/delete/:id', function (req, res) {
    console.log("deleting author id: ", req.params.id)
    Job.remove({ _id: req.params.id }, function (err) {
        if (err) {
            res.json({ message: "Error", err: err })
        } else {
            res.json({ message: "Success" })
        }
    })
})

// Catch 'other' routes
app.all("*", (req, res, next) => {
    res.sendFile(path.resolve("./client/dist/index.html"))
});
```

## 3. Build Angular Project

1. Navigate to project directory and create a new angular project  
`ng new client --routing`
2. Inside project directory, build Angular project (create dist folder)  
`ng build --watch`
3. Define Static route to the newly created dist folder 

```JavaScript
app.use(express.static(__dirname + '/angular_Project/dist'))
```

4. Create a service  
`ng g s http`
5. Open app.module.ts

```JavaScript
import { HttpService } from './http.service';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';

@NgModule({
    declarations: [
        AppComponent,
        HomeComponent,
        NewComponent,
        EditComponent,
        DetailsComponent,
        ProfileComponent,
        EditprofileComponent
    ],
    imports: [
        BrowserModule,
        AppRoutingModule,
        HttpClientModule,
        FormsModule
    ],
    providers: [HttpService],
    bootstrap: [AppComponent]
})
```

6. Open http.service.ts

```JavaScript
import { HttpClient } from '@angular/common/http';

@Injectable()
export class HttpService {

    constructor(private _http: HttpClient) { }
}
```

7. Open app.component.ts

```JavaScript
import { HttpService } from './http.service';

export class AppComponent {
    title = "app"
    constructor(private _httpService: HttpService){ }
}
```

## 4. Run the Web Application

1. Start by turning on database (MongoDB)  
`sudo mongod`
* To kill database:  
  * ps -ax | grep mongo
  * sudo kill 'database number'
2. In another terminal window, start up the server (main project direcory)  
`nodemon server.js`
3. Inside the Angular project directory, in another terminal window  
`ng build --watch`
## 5. Connect App Components to Server

1. Open app.component.ts  

```JavaScript
import { Component, OnInit } from '@angular/core';

export class AppComponent implements OnInit {

    constructor(private _httpService: HttpService) { }

    ngOnInit() {
    }

}
```

2. Create all the component functions that you'll have triggered in the HTML and test them in the ngOnInit  
3. Connect the http.service.ts to the server.js  
4. Connect the app.component.ts to the http.service.ts  
5. Make your server.js routes perform CRUD operations
6. Connect your app.component.html to your app.component.ts

## 6. Routing Set Up

1. Create a component (in client/src/app)  
`ng g c component_name`

2. Open app.component.html  

```HTML
<button [routerlink]="['alpha']">Load Alpha</button>  
<button [routerlink]="['beta']">Load Beta</button>  
<router-outlet></router-outlet>
```

3. Open app-routing.module.ts  

```JavaScript
import {AlphaComponent } from './alpha/alpha.component';
import {BetaComponent } from './beta/beta.component';
import {PagenotfoundComponent } from './pagenotfound/pagenotfound.component';

const routes: Routes = [
    { path: 'alpha', component: AlphaComponent },
    { path: 'beta', component: BetaComponent },
    { path: '', pathMatch: 'full', redirectTo: '/alpha' },
    { path: '**', component: PagenotfoundComponent },
];
```

4. Open app.module.ts

```JavaScript
import {AlphaComponent } from './alpha/alpha.component';
import {BetaComponent } from './beta/beta.component';

import {PagenotfoundComponent } from './pagenotfound/pagenotfound.component';
@NgModule({
    declarations: [
        AlphaComponent,
        BetaComponent,
    ]
```

5. Open server.js  

```JavaScript
app.all('*', (req, res, next) => {  
    res.sendFile(path.resolve('./AngularApp/dist/index.html'))
});
```

6. Open app.component.ts  

```JavaScript
import { ActivatedRoute, Params, Router } from '@angular/ router';

constructor(
    private _route: ActivatedRoute,
    private _router: Router
) {}
```

**[CRUD MEAN Walkthrough](https://github.com/ccasil/DojoAssignments/blob/master/MEAN/Angular/FINALCRUDMEANWalkthrough.pages)**  