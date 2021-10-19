
# Troubleshooting

## Common Problems for Users

### Unexpected https redirect

- __Q__: I enter http:// instead of https://, but I still get redirected to https://, plz help!
  - A: Sometimes, even if the server or load balancer does not have force-ssl/forwarding enabled, our browser makes a decision for us and still redirects us to the https address.
    - Resolutions:
      - Chrome - Navigate to [chrome://net-internals/#hsts](chrome://net-internals/#hsts). At the bottom of the page and in the box below `Delete domain security policies`, enter the domain youre trying to access (example: test.devnetes.com) and click delete. Then try to again navigate to the http:// version of the site.

## Common Problems for Developers

- __Q__: In windows, why do I receive an error about docker.sock path?

- __Q__: In windows, when running 'docker-compose up', why don't my services start properly and why to I get an error, "Cannot create container for service traefik: 'Mount denied: The source path ... is not a valid Windows path'"?
  - A: This is a known problem with the latest stable versions of Docker on Windows.
  - Resolutions:
    - Set the following env variable and value. `COMPOSE_CONVERT_WINDOWS_PATHS=1`
    - In powershell: `$Env:COMPOSE_CONVERT_WINDOWS_PATHS=1`

- __Q__: Why do I get file access errors when running docker-compose up?  My services start but then fail because they can't access certain files like package.json or authentication certificates.  I see errors such as, "Unable to add a certificate to the entryPoint \"https\": unable to generate TLS certificate: tls: failed to find any PEM data in certificate input," or "Error preparing server: No certificates found for TLS entrypoint https".
  - A: Docker loses the ability to access files on C: if the user credentials (password) changes.
  - Resolutions:
    - Right-click the Docker icon in the system tray and select "Settings...".  Choose the "Shared Drives" item, uncheck the "C" drive, then re-check it, and enter your current Windows user credentials.

### Example Entry

- __Q__:
  - A:
    - Resolutions:
      - (placeholder)
