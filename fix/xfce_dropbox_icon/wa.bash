#!/bin/bash

#http://askubuntu.com/questions/732967/dropbox-icon-is-not-working-xubuntu-14-04-lts-64

dropbox stop && DBUS_SESSION_BUS_ADDRESS="" dropbox start
