# infra-lab

Infrastructure lab (Linux, systemd, bash).

## myapp

Simple systemd service and helper scripts:

- `myapp/app.sh` — service script that writes a log line to `/var/log/myapp.log` every 5 seconds.
- `myapp/myapp.service` — systemd unit file for `myapp`.
- `myapp/check_service.sh` — checks the status of a systemd service (`active` / `not active`) and returns proper exit codes.
- `myapp/cleanup_logs.sh` — deletes log files older than N days in a given directory.
