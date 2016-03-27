# Tools
some small and useful tools

## Run or raise

Script to run any application, or raise up window, if it already running. If you bind this invocation to hotkey, you got next:
- if application is not running, it will be started
- if application is up, but not in focus, window will bring up
- if application have several windows, the each next press will bring focus to next window of this application (cycle thought windows)
- if application have only one window, the second press will minimize it

Sample of usage:
```bash
/home/disfinder/opt/run-or-raise atom atom
```
## Useful scripts
such as terminator as quake terminal, linux suspend, and some other, mostly for use in following shortcuts section

## XFCE4 keyboard shortcuts
they can be set via script, this is wonderfull!

## configuration files
- bash
- screen
- git

With pretty colors and aliases!

## post-commit hook
for self-deploy (use `export TOOLS_PERFORM_AUTO_DEPLOY=true` variable)

## ansible-plabook
deploy to localhost easy with:
```bash
ansible-playbook -i inventory/localhost playbook-local.yml
```
