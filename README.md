# Welcome

This is the repository for Zach Calvert's 

 _Designing, Modeling, and Securing RESTful APIs_

a RESTful engineering guide for API designersf and integration engineering leads.

# Commands

## Launch OAS Spec Editor

This command launches the Library API specification in a swagger-ui docker image via mounting the local filesystem folder and directing swagger to point at the [spec](./spec.yml) file.  Cleanup is performed with the ```make stop``` command.

```make spec```

1. Run the command
2. Open your browser to http://localhost:8080/

## Launch Plant UML Editor

This command launches the Plant UML docker image for editing UML diagrams written in Plant UML format.  See [uml](./uml) folder for images from the book.

```make puml```

1. Run the command
2. Open your browser to http://localhost:8181/

## Stop Docker Images

```make stop```

# Open API Specification 3.2

The demonstration API specification is available at [spec.yml](./spec.yml).  
