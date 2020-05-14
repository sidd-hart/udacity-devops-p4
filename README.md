[![sidd-hart](https://circleci.com/gh/sidd-hart/udacity-devops-p4.svg?style=svg)](https://github.com/sidd-hart/udacity-devops-p4.git)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py` application file

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

The application will run on localhost on port 80 -- http://localhost:8000

### Predict housing prices 

Run `./make_prediction.sh` when the app is deployed and running. This script will send the independent variable to the app and get the predicted output.

### Upload Docker image to Hub

Use the `./upload_docker.sh` to upload the docker image <b>udacity_devops:version1</b> to the DockerHub. The username is stored in $DOCKER_USER environment variable, and the password is saved in a seperate file local my_password.   

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Project Files and Folders

* __notes.txt__: This files maintains all the changes made in the original project files 
* __requirements.txt:__ This file is use by the pip installer to recreate the application environment 
* __model_data/boston_housing_prediction.joblib:__ The scikit-learn model data
* __app.py:__ Flask application file for the API. Runs the server on port 80
* __output_txt_files:__ This folder contains the output data files.
* __output_txt_files/docker_out.txt:__ Console output from running run_docker.sh and make_prediction.sh
* __output_txt_files/kubernetes_out.txt__ Console output from running run_kubernetes.sh and make_prediction.sh
* __Dockerfile:__ File to create and run the docker image to run the API
* __Makefile:__ File to use the make commands to install, setip, lint, etc
* __run_docker.sh:__ Contains commands to the docker container 
* __upload_docker.sh:__ This file contains steps to communicate with DockerHub and pudh the docker image
* __run_kubernetes.sh:__ Commands to create the kubernetes pod, and port-forward the API to port 8000
* __make_prediction.sh:__ This file forwards the relevant prediction input data and gets the predicted output from the API 
* __.circleci/config.yml:__ This folder is neede as per requirements of CircleCI, and should contain the config.yml file 