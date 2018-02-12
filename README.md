### Running a docker image:

1. Download the argo-container repository using 'git clone https://github.com/argo-marketplace/argo-container.git'

2. To create the image file locally follow the steps from "Steps for non-tech person to recreate docker image" file 

3. Once the image is created, launch the docker quickstart terminal and run the command docker run -it --rm -p 6080:80 -p 5900:5900 -e VNC_PASSWORD=mypassword 'imageName'
mypassword is a user-defined alphanumeric which will be used to login to the ubuntu docker image in the next step

4. Launch the browser and run the file on the IP address mentioned in the docker quickstart terminal (mostly 192.168.99.100:6080) if windows and localhost:6080 on mac

### To launch a jupyter-notebook on the container, go to the LXTerminal and run the command 
jupyter notebook--ip 127.0.0.1 --allow-root

### To run anaconda on the terminal run the command 'source activate root' before launching python
Currently running python3 using anaconda
Note: Geopandas runs on ubuntu python2, currently having issue running it on python3

### To Run R, go to LXTerminal and run the command R


### To launch qgis desktop, go to the LXTerminal and run the command qgis