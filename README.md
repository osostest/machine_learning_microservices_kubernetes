
## Project Overview: Operationalize a machine learning microservice API 
**CircleCI Public Status:** [![CircleCI](https://circleci.com/gh/herrera-luis/machine_learning_microservices_kubernetes.svg?style=svg)](https://circleci.com/gh/herrera-luis/machine_learning_microservices_kubernetes)

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

---

### Running locally `app.py`

1. Create an environment: `virtualenv env_devops`
2. Set your environment: `source env_devops/bin/activate`
3. Install dependencies: `make install` or `pip install -r requirements.txt`
4. Run app:  `python app.py`

### Running with Docker

1. Install Docker
2. Execute the script: `sh ./run_docker.sh`
3. Application will be expose on port 80

### Running with Kubernetes (MiniKube)

1. Install or activate MiniKube
2. Execute the script: `sh ./run_kubernetes.sh`
3. Application will be expose on port 80

### Testing Housing Princing Model

After application is running you can do calls to the housing pricing model with the next script:

`sh ./make_prediction.sh`

---
**You can see the execution results in [images](https://github.com/herrera-luis/machine_learning_microservices_kubernetes/tree/master/images) folder**
