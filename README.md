# Vanny96 Hassio Addons

## Development

Working with podman, I needed to do the following once inside the devcontainer:
1. `sudo mount --make-shared /mnt/supervisor`
2. Edit `/etc/supervisor_run` to have `-v /mnt/supervisor:/data:rw,shared`

Not sure which of the 2 or if both are required, will automate/fix in the future