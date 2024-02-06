# Outline  
- Let's talk about using Terraform and Docker together!

- I'm Matthew, welcome to MattyCodes.

- Assumptions: Familiarity with some sort of Linux shell, & an IDE (such as VSCode). 
- Not assuming familiarity with Docker and Terraform but helpful if you have installed and gone through basic tutorials. 
- Not assuming any web development experience, you don't modify any of that for this project.   

    - If you're unfamiliar with Docker and Terraform, I have a link to a walkthrough [GH repo](https://github.com/adasMatt/mattDotNerd-devops-and-data-projects/tree/master/tfDocker) that will help get you set up, it works with the official Terraform docs to help you install Terraform and get an nginx test page, which honestly brings you more than halfway through the concepts covered in this video.

- So, if you needed to do that, and now you're back for the rest of the project, now we'll take a look at an architecture diagram.

    - Here's us, the DevOps team. Everything done in this project doesn't really go through the internet besides terraform providers pulling from that repository.

    - So the files for an application are given to DevOps for testing, and before your company spends all their money on real infrastructure (AWS, Google Cloud, etc) we'll get the Terraform files working with Docker containers and use this as a template whenever the team does get more seriously into production.

    - The main.tf is creating not one but two things here: a docker network and a docker container that lives on that network, the network isn't actually super important for this project but it will be when you want to expand on this and create multiple containers with different purposes as we'll go over in the next video when we add Ansible. I'm also using it to sort of simulate a VPC which is what would come into play in production environment.
  
  
![architectureTFD](https://github.com/adasMatt/devops-projects/blob/master/tfDocker/tfDocker2048/video1/architectureTFD.png)
<!--
(youtubeVideoScript.md on local for more thoughts)
come back and add this after pushing the image to GH repo
 -->