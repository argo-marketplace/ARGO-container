### Running a docker image:

1. Download the argo-container repository using `git clone https://github.com/argo-marketplace/argo-container.git`
2. To install docker on AWS Amazon Linux - follow [these instructions](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html#install_docker)
3. Install docker
   - To run on Windows: download `docker toolbox` and run the docker quickstart terminal.
   - `cd argo-container` to navigate to the directory containing the Dockerfile file.
4. Build the docker image
   - Run the command docker `docker image build -t <Enter-your-imageName-in-lowercase> .` This command will run the file containing the instructions to run the dockerfile. It will take some time to build the image
5. Run the docker image
   - To run the docker image locally run the command `docker run -it --rm -p 6080:80 -p 5900:5900 <the-image_name-you-used in #4` 
   - Once the image starts running, launch the browser and run the file on the IP address mentioned in the docker quickstart terminal (mostly 192.168.99.100:6080)
 - #### NOTE: if using Mac, run the image on localhost:6080

6. Once the image is created, launch the docker quickstart terminal and execute `docker run -it --rm -p 6080:80 -p 5900:5900 -e VNC_PASSWORD=mypassword 'imageName'`
mypassword is a user-defined alphanumeric which will be used to login to the ubuntu docker image in the next step

7. Launch the browser and run the file on the IP address mentioned in the docker quickstart terminal (mostly 192.168.99.100:6080) if windows and localhost:6080 on mac

### To launch a jupyter-notebook on the container, go to the LXTerminal and run the command 
`jupyter notebook--ip 127.0.0.1 --allow-root`

### To run anaconda on the terminal run the command 'source activate root' before launching python
Currently running python3 using anaconda
Note: Geopandas runs on ubuntu python2, currently having issue running it on python3

### To Run R, go to LXTerminal and run the command R


### To launch qgis desktop, go to the LXTerminal and run the command qgis
