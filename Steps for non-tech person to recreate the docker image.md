### Steps for non-tech person to recreate docker image 

1. To run on Windows: download docker toolbox
2. Run the docker quickstart terminal 
3. Go to the location containing the dockerfile file.
4. Run the command docker `docker image build -t <Enter-your-imageName-in-lowercase> .`
This command will run the file containing the instructions to run the dockerfile. It will take some time to build the image
5. To run the docker image locally run the command "docker run -it --rm -p 6080:80 -p 5900:5900 imageName" 
6. Once the image starts running, launch the browser and run the file on the IP address mentioned in the docker quickstart terminal (mostly 192.168.99.100:6080)

#### NOTE: if using Mac, run the image on localhost:6080
