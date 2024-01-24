# opencv-cuda-docker

OpenCV with CUDA docker image build settings based on CUDA containers.<br>
Feel free to quote and modify as needed.

## System Requirement

- Ubuntu 22.04
- NVIDIA GPU driver version **535.104.05** or later.
- Docker engine.
- NVIDIA container runtime.
- [NVIDIA Video Codec SDK](https://developer.nvidia.com/video-codec-sdk). Recommended version 12.1.14.

## Build Image

Modify the `video_codec_sdk` zip file path in dockerfile and execute `build_image.sh`.<br>
If necessary, you can use ARG to adjust the version number in dockerfile.

## Push Image

```sh
docker tag opencv-cuda:{opencv_version}-cuda{cuda_version}-ubuntu{ubuntu_version} {your-docker-hub}/opencv-cuda:{opencv_version}-cuda{cuda_version}-ubuntu{ubuntu_version}
docker push {your-docker-hub}/opencv-cuda:{opencv_version}-cuda{cuda_version}-ubuntu{ubuntu_version}
```

## Run Image

```sh
docker run --rm -it --gpus=all opencv-cuda:{opencv_version}-cuda{cuda_version}-ubuntu{ubuntu_version}
```

## Usage Sample

```sh
python3
import cv2
cv2.cuda.getCudaEnableDeviceCount()
cv2.cuda.printCudaDeviceInfo(0)
video_reader = cv2.cudacodec.createVideoReader("your_video_source")
```
