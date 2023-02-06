FROM ubuntu:20.04
# FROM nvidia/cuda:12.0.0-devel-ubuntu20.04
# FROM pytorch/pytorch:1.13.0-cuda11.6-cudnn8-devel
FROM python:3.8
# FROM jjanzic/docker-python3-opencv

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update
RUN apt-get -y upgrade

# RUN apt-get install -y build-essential gfortran libatlas-base-dev libqt5gui5
# RUN apt-get install -y libsm6 libxext6 libxrender-dev
# RUN apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libgtk-3-dev -y

# RUN mkdir -p /code/logs
# RUN touch /code/logs/md-gunicorn.log
# RUN touch /code/logs/md-gunicorn-access.log

RUN mkdir /api
WORKDIR /api
COPY . /api

# RUN mkdir -p /image/mobiledetection

RUN python3 -m pip install --upgrade pip setuptools wheel
RUN apt install -y libgl1-mesa-glx
# RUN pip install gunicorn gevent
RUN pip3 --no-cache-dir install -r requirements.txt  

