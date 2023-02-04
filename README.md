# cookiecutter-template

[How to launch a new microservice]
========================
 
Requires
--------
* Docker
* Python
* Cookiecutter `brew install cookiecutter` or `pip install cookiecutter`

Steps
--------
1. update file cookiecutter-config.yaml
2. create an image in docker
5. run workflow app-cookiecutter-{NAME_TECHNOLOGY}-build

Use cookiecutter in Docker
----------------------------
#docker build --no-cache -t image-cookiecutter .
#docker run -it -p 8080:8080 --name app-container image-cookiecutter
#run script "sh .github/scripts/app-cookiecutter-mixed.sh true MyAppJava cookiecutter-java /cookiecutter"
#run script "sh .github/scripts/app-cookiecutter-mixed.sh false MyAppJava cookiecutter-ruby /cookiecutter"
