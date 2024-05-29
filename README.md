### autotrackanything-l4t-pytorch

Dockerfile, codes, and a simple setup script to display frames obtained from a network camera (RTSP) and track people using [AutoTrackAnything](https://github.com/licksylick/AutoTrackAnything) on Jetson AGX Oring Developer Kit.

0. Information
- Jetson AGX Orin Developer Kit (32GB)
- Jetpack 5.1.2
- TS-NA230WP

1. Preparation
```
$ bash setup.sh
$ sudo docker run --name tracker --network host --runtime nvidia autotrackanything -it /bin/bash
```

2. Edit config (optional)

3. Run 
```
# python3 tracking.py --video_path=rtsp://{user}:{password}@{ip}:{port}/ipcam_h264.sdp --width=640 --height=360 --frames_to_propagate=600 --output_video_path=test_stream.mp4 --device=0 --person_conf=0.7 --kpts_conf=0.4 --iou_thresh=0.15 --yolo_every=2 --output_path=test.csv
```
