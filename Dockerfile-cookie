FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
  git \
  file \
  curl \
  procps \
  build-essential \
  python3.8 \
  python3-pip \
  python3.8-dev

RUN apt-get install vim -y
#RUN apt-get install build-essential procps curl file git -y
RUN pip3 install --upgrade pip
RUN pip3 install --upgrade requests
#RUN pip3 install python3


RUN mkdir cookiecutter
COPY . /cookiecutter
WORKDIR /cookiecutter
RUN ls

RUN pip install -r /cookiecutter/requirements.txt

ENV PATH=$HOME/.local/bin:$PATH
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN sh .github/scripts/app-cookiecutter-mixed.sh true MyAppJava cookiecutter-java /cookiecutter
RUN sh .github/scripts/app-cookiecutter-mixed.sh false MyAppJava cookiecutter-ruby /cookiecutter

#$(DOCKER) build --no-cache -t $(IMAGE_NAME) -f $(DOCKERFILE) .
#$(DOCKER) run -it -v $(PWD):/work -p $(APP_HOST_PORT):$(APP_CONTAINER_PORT) --name $(CONTAINER_NAME) $(IMAGE_NAME)
