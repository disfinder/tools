#!/bin/bash
set -x

QT_TITLE="aketerminal"
TerminalX=1280
TerminalY=0
TerminalW=1238
TerminalH=500

DESIRED_WINDOW=$(xdotool search --limit 1 --name ${QT_TITLE})
NOT_FOUND=$?
if [[ "${NOT_FOUND}" == 1 ]]
  then
  # application not running, run app
  terminator --config=/home/disfinder/.config/terminator/config_qake \
    --working-directory=~/develop --title=${QT_TITLE} --borderless \
    --geometry=${TerminalW}x${TerminalH}+${TerminalX}+${TerminalY} &
else
  ACTIVE_WINDOW=$(xdotool getactivewindow)
  if [[ "${DESIRED_WINDOW}" == ${ACTIVE_WINDOW} ]]
    then
      xdotool windowunmap "${ACTIVE_WINDOW}"
  else
    xdotool windowmap "${DESIRED_WINDOW}"
    xdotool windowactivate "${DESIRED_WINDOW}"
    xdotool windowmove "${DESIRED_WINDOW}" 1920 0
    # xdotool windowsize "${DESIRED_WINDOW}" 100% 50%
  fi
fi
