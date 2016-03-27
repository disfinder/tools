#!/bin/bash
#path to your run-or-raise script
ROR_PATH="/home/disfinder/opt/run-or-raise"
xfconf_execute="xfconf-query --channel xfce4-keyboard-shortcuts --property"
xfconf_prop="--create --type string --set"

${xfconf_execute} "/commands/custom/<Super>w"           ${xfconf_prop}  "/home/disfinder/opt/run-or-raise VirtualBox VirtualBox"
${xfconf_execute} "/commands/custom/<Super>a"           ${xfconf_prop}  "/home/disfinder/opt/run-or-raise atom atom"
${xfconf_execute} "/commands/custom/<Super>bracketleft" ${xfconf_prop}  "/home/disfinder/opt/run-or-raise pac \"/usr/bin/pac\""
${xfconf_execute} "/commands/custom/<Super>f"           ${xfconf_prop}  "/home/disfinder/opt/run-or-raise firefox firefox"
${xfconf_execute} "/commands/custom/<Super>k"           ${xfconf_prop}  "/home/disfinder/opt/run-or-raise keepassx keepassx \"keepassx ~/Dropbox/key/ep.kdb\""
${xfconf_execute} "/commands/custom/<Super>m"           ${xfconf_prop}  "/home/disfinder/opt/run-or-raise.d/chromium-mail"
${xfconf_execute} "/commands/custom/<Super>s"           ${xfconf_prop}  "/home/disfinder/opt/run-or-raise skype \"skype\""
${xfconf_execute} "/commands/custom/<Super>t"           ${xfconf_prop}  "/home/disfinder/opt/run-or-raise terminator terminator"
${xfconf_execute} "/commands/custom/XF86AudioNext"      ${xfconf_prop}  "/home/disfinder/opt/run-or-raise chromium-browser  chromium-browser"
${xfconf_execute} "/commands/custom/XF86AudioPlay"      ${xfconf_prop}  "/home/disfinder/opt/run-or-raise pavucontrol pavucontrol"
${xfconf_execute} "/commands/custom/XF86AudioPrev"      ${xfconf_prop}  "/home/disfinder/opt/run-or-raise audacious audacious"
${xfconf_execute} "/commands/custom/F12"                ${xfconf_prop}  "/home/disfinder/opt/qurminator.sh"
