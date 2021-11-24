# Jenkins4Acumos

This dockerfile create a jenkins container with python3.8 installed in it

### Create the jenkins image  
sudo docker build -t my_jenkins .


### Create the jenkins container running on localhost:8080  
sudo docker run -d -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock my_jenkins

