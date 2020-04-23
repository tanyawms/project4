[![CircleCI](https://circleci.com/gh/tanyawms/project4.svg?style=svg)](https://circleci.com/gh/tanyawms/project4)

## Project Overview

The assignment is to run a machine learning api using Kubernetes. The api is a pre-trained sklearn model which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). The model has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. 

## Project Tasks

The tasks in this project are:
* Testing project code using linting
* Complete a Dockerfile to containerize this application
* Deploy the containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Use Minikube and configure Kubernetes then create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested


## Setup the Environment

* Create a virtualenv and activate it
  python3 -m venv ~/devops
  source ~/devops/bin/activate

* Run `make install` to install the necessary dependencies
  The requirements.txt file contains the dependencies

## Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

## App Location/Port
http://localhost:5000

## Predict Housing Prices
./make_prediction.sh command is run after the app is running in Docker or Kubernetes environments.

## DockerHub
After running ./run_docker.sh and obtaining results from ./make_prediction.sh, upload image to DockerHub with ./upload_docker.sh command.

## Output Files
output_txt_files/docker_out.txt Console output from running run_docker.sh and make_prediction.sh
output_txt_files/kubernetes_out.txt Console output from running run_kubernetes.sh and make_prediction.sh

## CircleCI
CircleCI is connected with GitHub and used for the CI/CD pipeline. The configuration file (config.yml) is in the .circleci directory.

