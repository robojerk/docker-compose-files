This is a list of ideas for future improvements and features.

services:
  jellyfin:
    # ... existing code ...
    devices:
      - /dev/dri:/dev/dri
      - /dev/i915:/dev/i915
    group_add:
      - "render"
      - "video"
    # ... rest of existing code ...


services:
  plex:
    # ... existing code ...
    devices:
      - /dev/dri:/dev/dri
      - /dev/i915:/dev/i915
    # ... rest of existing code ...


services:
  immich-machine-learning:
    # ... existing code ...
    image: ghcr.io/immich-app/immich-machine-learning:${IMMICH_VERSION:-release}-openvino
    devices:
      - /dev/dri:/dev/dri
      - /dev/i915:/dev/i915
    # ... rest of existing code ...

#In the hwaccel.ml.yml file, add the following services:
services:
  openvino:
    devices:
      - /dev/dri:/dev/dri
    environment:
      - MACHINE_LEARNING_DEVICE=gpu