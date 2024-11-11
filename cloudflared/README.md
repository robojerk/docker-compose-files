# Cloudflared Setup (Planned)

This directory will contain the configuration for Cloudflare Tunnel (cloudflared), which creates a secure tunnel between your local services and Cloudflare's edge network. This allows you to expose your local services to the internet securely without opening ports on your router.

## Status: Not Yet Implemented

🚧 **This is a placeholder for future implementation** 🚧

When implemented, cloudflared will:
- Create secure tunnels to expose local services
- Provide automatic SSL/TLS encryption
- Allow access to internal services without port forwarding
- Enable Zero Trust access controls

## Planned Features
- Secure access to internal web applications
- Custom domain support
- Authentication integration
- Zero Trust network access

## Network Architecture
The setup will use a DMZ (demilitarized zone) approach for enhanced security:

1. **DMZ Network**
   - Contains only cloudflared and Nginx Proxy Manager
   - Isolates external-facing services
   - Provides a security buffer between internet and internal services

2. **Internal Network**
   - Contains all application services
   - No direct exposure to cloudflared
   - All traffic must pass through Nginx Proxy Manager

This architecture ensures that cloudflared never has direct access to internal services, adding an extra layer of security.

## Local DNS Configuration
Static host mappings have been configured on the router to enable direct local access to services:

Example:
- External: service1.mydomain.com → Cloudflare → Internal Network
- Local: service1.mydomain.com → 192.168.1.2 (direct internal access)

This configuration ensures that:
- When accessing services from home, traffic stays within the local network
- No unnecessary routing through Cloudflare when accessing services locally
- Same domain names work both internally and externally
- Seamless experience regardless of location

### Benefits
- Reduced latency for local access
- Continues working if internet connection is down
- No unnecessary external bandwidth usage
- Maintains service access if Cloudflare is unavailable

## To Be Added
- Docker compose configuration
- Environment variables setup
- Tunnel configuration
- DNS routing rules
- Network isolation setup
- Nginx Proxy Manager configuration

## Environment Configuration
A `sample.env` file is provided with the following configuration options:

To set up your environment:
1. Copy sample.env to .env
2. Update the values with your specific configuration
3. Keep the .env file secure and never commit it to version control
