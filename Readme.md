
This script installs paramiko onto the ceph base image


# Usage

1. Run a local docker registry

```
docker run --privileged -d --name registry \
 -p 5000:5000 -v /var/lib/registry:/var/lib/registry \
 --restart=always registry:2
```

2. run ./run.sh

3. run `IMAGE=localhost:5000/ceph/ceph:latest cpehadm bootstrap`
