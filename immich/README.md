# Immich Hardware Acceleration Setup

This setup utilizes an Intel Arc A40 8GB GPU for hardware-accelerated machine learning and video transcoding in Immich.

## Hardware Configuration
- GPU: Intel Arc A40 8GB
- Driver: Intel iHD (VA-API)

## Configuration Files

### Machine Learning Acceleration
The `hwaccel.ml.yml` file configures OpenVINO to use the Intel Arc GPU for machine learning tasks. Key settings include:
- OpenVINO GPU device configuration
- VA-API driver settings
- Device passthrough for GPU access

### Video Transcoding
The `hwaccel.transcoding.yml` file sets up Intel QuickSync for hardware-accelerated video transcoding. Features include:
- Low-power mode enabled
- Intel Media SDK codec integration
- VA-API driver optimization

### Main Server Configuration
The Immich server is configured in `docker-compose.yml` to utilize both ML and transcoding acceleration features: