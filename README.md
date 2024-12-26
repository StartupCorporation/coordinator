# Deye Web

This repository is a coordinator of the *Deye Web* project.

Here, we define the project structure, how repositories have to be cloned, what prerequisites you must have, workflow
examples, etc.

## Content

* [Directories](#directories)
    * [Frontend](#frontend)
    * [Backend](#backend)
    * [Infrastructure](#infrastructure)
* [Makefile](#makefile)
* [Setup](#setup)
    * [Coordinator](#coordinator)
    * [Setup project](#setup-project)

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

## Makefile

The `Makefile` file defines scripts that can be used for local development. For example:
* Initialize the project
* Start the application locally
* Stops the application
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

### Setup project

Run the following commands:

```shell
$ make init
```

It will clone the rest of repositories, link them and make some configuration that are necessary for the local development.

After running this command, you will have the following project structure:
```
deye_web
|-- backend
|   |-- admin
|   |   `-- app
|   |
|   `-- customer
|       `-- app    
|
|-- frontend
|   `-- customer
|       `-- app    
|
`-- infrastructure
```