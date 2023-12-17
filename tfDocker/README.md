# How to use TF with Docker
This project goes over
- Installation of Terraform from scratch
- Launching Nginx test page with Docker and Terraform
- Customizing Docker container to play 2048 game

## Consult [TF Documentation](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
Steps:
- Install Terraform
- Install Docker
- Create tfDocker directory, change into the directory and create main.tf (get contents of main.tf from tutorial)
  
```mkdir tfDocker; cd tfDocker; touch main.tf```

- run terraform commands

```terraform init; terraform apply```

- go to web browser "localhost:8000" to verify nginx test page
- check running Docker container w/command:   

```docker ps```

- check image w/:  

```docker images```

- destroy automated Docker deployment w/command:  

`terraform destory`

- run docker commands again to show everything created is gone  
  
The magic of Terraform shown here, is that once you have a Docker container, the image and container can be built on any local machine to test applications essentially using a single `terraform apply` command with all relevant information contained within a main.tf file, rather than using `docker build`, `docker run`, etc with all of the messy details those docker commands need.

## Architecture Diagram placeholder
An architecture diagram at the moment might look like:  
```
Dev team -> Terraform files (containing: terraform provider registry, docker provider) -> docker images -> local website access for performance testing
```
# Expanding on Documentation Tutorial
- Make a custom [Docker image (use 2048)](https://github.com/adasMatt/mattDotNerd-devops-and-data-projects/tree/master/tfDocker/tfDocker2048)
  - see notes for expanding this idea
  - try docker network with multiple docker containers
  - maybe the other container is a simple database to store a table of scores from each match? (do sql queries to show db table)
- Add CI/CD with GitHub Actions?
- Use Docker network with multiple containers (webserver, db, etc)
- Add architecture diagrams
