# sandbox-environment
This is my Sandbox environment build on debian11 bullseye . It has podman and molecule installed to test my ansible roles. This build for libvirt and virtualbox
```
vagrant up
```
If issue with podman pull or molecule create .I did not see it in libvirt but seeing it in virtualbox
```
https://www.redhat.com/sysadmin/rootless-podman
```

```
podman pull  --storage-opt overlay.ignore_chown_errors=true <imagename>
```

These are the two images I use for my ansible roles
```
 podman pull  --storage-opt overlay.ignore_chown_errors=true docker.io/sunilsankar/docker-almalinux
 podman pull  --storage-opt overlay.ignore_chown_errors=true docker.io/sunilsankar/docker-rocky8
```
