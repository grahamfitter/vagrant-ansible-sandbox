Directories in here build container images, each have a docker_build.sh file to do that.

The main purpose here is to build containers that run WINE. Its an older version of wine (v4),
running on an older RHEL6.10. This is split into two images (build and runtime) because the build
takes a long time and (now it works) only needs to be done once. The runtime container may be more
volatile.

The build order for WINE is:

 1. rhel6_extras
 1. wine_el6_build
 1. wine_el6_runtime

Build these on node-2.

The wine_el6_runtime container starts a VNC server to support the WINE framebuffer. The
docker_run.sh script exposes the standard VNC port 5900. To see that on the host, port forwarding
is needed. Run this in the top-level directory on the vagrant host:

```
vagrant ssh node-2 -- -L5900:node-2.local:5900

# On node-2...
cd /vagrant/containers/wine_el6_runtime
./docker_run.sh

# In the container...
vncserver :0
wine cmd.exe

# In CMD...
cd c:\Program Files\Windows NT\Accessories
wordpad.exe
```

On the host, run vncviewer on localhost:5900. The password is "banana". Wordpad should be visible.

