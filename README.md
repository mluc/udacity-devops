[![CircleCI](https://circleci.com/gh/mluc/udacity-devops/tree/project4.svg?style=svg)](https://circleci.com/gh/mluc/udacity-devops/tree/project4)


## A summary of the project
- This project is to operationalize a machine learning microservice API.
- A flask app with route `/predict` can be called and it will return prediction values (the result is from model_data/boston_housing_prediction.joblib).
- The flask app is launched in local docker container. To verify: an API call to `/predict` returns prediction values
- The docker image is uploaded to docker hub
- Kubernetes is setup to run locally, the same docker image from docker hub is pulled and run in a Kubernetes pod. To verify: an API call to `/predict` returns prediction values 
- CirlceCI is integrated to run the lint check on the same environment

## How to run the Python scripts and web app
sudo python3 app.py

## Explanation of the files in the repository
- app.py: a flask app
- Dockerfile: to setup docker image and start the flask app
- Makefile: has commands to install the environment, run lint check, ..
- requirement.txt: has dependencies to run the app
- run_docker.sh: has commands to build the docker image and start the app
- upload_docker.sh: has commands to login to docker hub, tag the image with <docker ID/path>, then push the image to docker hub
- run_kubernetes.sh: has commands to pull the same docker image from docker hub and run the container in a kubernetes pod
- .circleci/config.yml: setup the same environment and run lint check in cirlceci
