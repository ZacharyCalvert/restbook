# Welcome

This is the repository for Zach Calvert's 
 Designing, Modeling, and Securing RESTful APIs

a work started in 2017 and completed in 2026.  

# Commands

## Launch Spec

This command launches the Library API specification in a swagger-ui docker image via mounting the local filesystem folder and directing swagger to point at the [spec](./spec.yml) file.  Cleanup is performed with the ```make stop``` command.

```make spec```

1. Run the command
2. Open your browser to http://localhost:8080/

## Stop Docker Images

```make stop```

# Open API Specification 3.2

The demonstration API specification is available at [spec.yml](./spec.yml).  
