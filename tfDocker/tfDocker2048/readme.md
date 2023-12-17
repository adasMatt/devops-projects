# 2048 game with Docker automation using Terraform
- For simple applications like 2048 it is easy enough to simply use volumes objects in terraform to add the application files: index.html, js/\*, style/\*. The nginx image is modified when the docker container is being created by terraform apply
  
- Next step is:
    - create Docker network and another container that will simply deliver Ansible instructions for game container