# Watchtower Container Auto-Updates

This service automatically updates your Docker containers when new images are available.

## Features
- Automatic container updates
- Pushbullet notifications
- Scheduled updates at 4 AM
- Rolling restarts
- Cleanup of old images

## Configuration

### Environment Variables
A `sample.env` file is provided with the following options:

```env
# Timezone Configuration
TZ=America/Los_Angeles

# Pushbullet Configuration
PUSHBULLET_API_KEY=your_
