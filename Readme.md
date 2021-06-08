
This script installs paramiko onto the ceph base image


# Usage

1. Run a local docker registry

```
docker run --privileged -d --name registry \
 -p 5000:5000 -v /var/lib/registry:/var/lib/registry \
 --restart=always registry:2
```

2. run ./run.sh localhost:5000

3. run `sudo ./cephadm --image localhost:5000/ceph/ceph bootstrap ...`
