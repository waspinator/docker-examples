FROM jupyter/datascience-notebook

# RUN apt-get update && \
#     apt-get install -y \
#     gunicorn \
#     build-essential

WORKDIR /workspace

COPY ./workspace/requirements.txt requirements.txt

RUN conda install --file requirements.txt

EXPOSE 8899
