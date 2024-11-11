# CIFS Volume Configuration for Docker Compose

I use greyhole to sync my videos and downloads to my NAS. This configuration allows me to mount the shares as Docker volumes so that my other containers can access the files.


This standalone docker-compose configuration creates two network shares mounted as Docker volumes:
- `videos` - Mounts a remote Videos directory
- `downloads` - Mounts a remote Downloads directory

These volumes are defined in their own docker-compose file because they are typically shared among multiple other containers/services. Once created, other docker-compose files can reference these volumes using the external volumes feature.

Both shares are mounted using the CIFS (Common Internet File System) protocol.

## Configuration

Create a `.env` file in the same directory as your docker-compose.yml with the following variables:

```env
CIFS_SERVER=123.456.789.101 # The IP address or hostname of the CIFS server
CIFS_USERNAME=your_username # The username for the CIFS server
CIFS_PASSWORD=your_password # The password for the CIFS server
PUID=1000        # User ID for permissions
PGID=1000        # Group ID for permissions
```

A `sample.env` file has been included as a template - copy it to `.env` and update the values:

```bash
cp sample.env .env
```

## Notes
- Uses CIFS protocol version 3.0
- Mounts are configured with specific user/group IDs for proper permissions
- The shares will be available to other Docker containers as volumes named `cifs_videos` and `cifs_downloads`
- Other docker-compose files can reference these volumes using the `external: true` volume configuration
- Some services (like Plex, Sonarr, etc.) are particular about file permissions. Setting the correct PUID and PGID ensures these services can properly access the mounted volumes. Make sure these values match the user IDs of the services that will access these volumes.
