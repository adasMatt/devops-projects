# work in progress 

- The first thing we will do is go through an architecture diagram to show an overview of what we are accomplishing with this project.
    - If you're unfamiliar with Docker and Terraform, I have a walkthrough on setting them up in the [GH repo](https://github.com/adasMatt/mattDotNerd-devops-and-data-projects/tree/master/tfDocker) here, it has links to the official Terraform docs to help you install Terraform and get an nginx test page, which honestly brings you more than halfway through the concepts covered in this video.

    - So, if you needed to do that and you did that, and now you're back for the rest of the project, we'll go over this architecture diagram because it's important to understand.

    - Here's us, the DevOps team. Everything done in this project doesn't really go through the internet besides terraform providers pulling the docker container resource stuff. Besides some of the Terraform and Docker details that are obscured here (which is one of the purposes of using these tools) everything is on your local machine.

    - So the files for an application are given to DevOps for testing, and before your company spends all their money on real infrastructure (AWS, Google Cloud, etc) we'll get the Terraform files working with Docker containers and use this as a template whenever the team does get more seriously into production.

    - The main.tf is creating not one but two things here: a docker network and a docker container that lives on that network, the network isn't actually super important for this project but it will be when you want to expand on this and create multiple containers with different purposes as we'll go over in the next video when we add Ansible. I'm also using it to sort of simulate a VPC which is what would come into play in production environment.

<!--
(youtubeVideoScript.md on local for more thoughts)
come back and add this after pushing the image to GH repo
![architectureTFD]() -->