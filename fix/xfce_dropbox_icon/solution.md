Unlike the solution proposed by kk78, the following method solves the problem once and for all:

1.   Close Dropbox.
1.   Open /usr/bin/dropbox file with a text editor (as an admin). For example, in the terminal run
      ```
      gksudo gedit /usr/bin/dropbox
      ```
1.   Create a new line after import os and add the following:
      ```
      os.environ['DBUS_SESSION_BUS_ADDRESS'] = ""
      ```
1.   Save and restart

Now Dropbox will work fine.

[src]( http://askubuntu.com/questions/732967/dropbox-icon-is-not-working-xubuntu-14-04-lts-64)
