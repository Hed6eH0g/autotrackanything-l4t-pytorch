FROM dustynv/l4t-pytorch:r35.4.1

WORKDIR /home

RUN apt-get update && apt-get install pkg-config libcairo2-dev vim git -y
RUN apt-get autoremove opencv-python -y
RUN git clone https://github.com/licksylick/AutoTrackAnything.git
COPY tracking.py /home/AutoTrackAnything

WORKDIR /home/AutoTrackAnything
RUN pip install -U pip
RUN pip install -r requirements.txt
RUN pip install pycairo
RUN pip install opencv-python==4.6.0.66 --user
RUN pip install -U ultralytics
RUN python3 download_models.py
RUN wget https://videos.pexels.com/video-files/10901926/10901926-sd_640_360_30fps.mp4 -O sample.mp4
RUN export DISPLAY=:1
