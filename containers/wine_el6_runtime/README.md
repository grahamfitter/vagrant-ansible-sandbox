= Tips for using Wine with VNC display

 - Expose VNC port when running container: ```docker run --rm -it -p5900:5900 wine_el6_runtime```
 - Run VNC server in container: ```vncserver :0```
 - Setup SSH tunnel from vagrant host shell ```vagrant ssh node-2 -- -L5900:node-2.local:5900
 - Connect to ```localhost:5900``` in VNC viewer on vagrant host, password is ```banana```

