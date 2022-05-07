# interactive-docker-image-with-terraform
<h3>Welcome to my interactive docker image with terraform application!</h3><br>
<b>Written Below are some steps that should be undertaken in order to use this application.</b><br>
1. Ensure that you have terraform and docker installed. (For other necessary packages, it will be installed in the app.js file.)<br>
2. Initialise Terraform: terraform init <br>
3. Check the Terraform plan using: terraform plan <br>
4. Apply all the configurations: Terraform apply <br>
<br><br>

To test the code on a local setup:
1. Build the application: ```docker build -t htx_docker_app .```
2. Run the application: ```docker run -p 127.0.0.1:8080:8080 htx_docker_app```
3. Go to http://localhost:8080 to try the application.

<h2> Application User Guide</h2>
1. This simple application allows users to input their name, gender, and any comments they would like to say.<br>
2. Upon entering their details and submitting, a message will appear below the form.<br>
3. If the user does not enter any inputs in the name text field, there will be an alert to inform the user that it is a necessary step to continue. 
