# Deye Web
This repository is a coordinator of the *Deye Web* project.

Here, we define the project structure, how repositories have to be cloned, what prerequisites you must have, workflow
examples, etc.

## Directories

### Frontend

The `frontend` directory contains frontend application repositories, such as:

* Admin frontend application
* Customer frontend application

### Backend

The `backend` directory contains backend application repositories, such as:

* Admin microservice
* Customer microservice

### Infrastructure

The `infrastructure` repository contains the necessary parts to set up the application locally, deploy it to production,
configure application for development, etc.

## .env.local

The `.env.local` file defines scripts that can be used for local development. For example:
* Initialize the project
* etc.

## Setup

This section describes how to set up the project for the local development.

### Coordinator

Clone this repository to the appropriate place on your machine.

For example:

```shell
$ git clone git@github.com:StartupCorporation/coordinator.git ~/deye_web
```

If you want to clone project to other directory, just replace `~/deye_web` with your option.

**The further steps assume that you cloned the `coordinator` to the `deye_web` directory.**

### Initialize the project

Run the following commands:

```shell
$ source .env.local
$ deye-init
```

It will clone the rest of repositories, link them and make some configuration that are necessary for the local development.

After running this command, you will have the following project structure:
```
deye_web
|-- backend
|   |-- admin
|   |   |-- app
|   |   `-- infrastructure  # It is a link to the infrastructure/admin-app
|   |
|   `-- customer
|       |-- app
|       `-- infrastructure  # It is a link to the infrastructure/customer-app    
|
|-- frontend
|   `-- customer
|       `-- app    
|
`-- infrastructure
    |-- customer-app
    `-- admin-app
```

## Project Entrypoint

All project management stuff is placed in the `infrastructure` directory.

Change your directory to the `infrastructure` and check the `README.md` file for additional details. 

The `infrastructure` contains scripts to start, stop, etc. the `deye-web` project or separate services.