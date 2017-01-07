# docker-jumpbox

Extended Docker image to run SSH server on host.

Expected volumes:
* authorized-keys:/authorized-keys authorized


USAGE:
```
docker run --name ssh_server -d -e USERS="user1,user2" -v ${PWD}/authorized-keys:/authorized-keys warden/docker-jumpbox
```

where:
* USERS - semi-colon separated list of users allowed to log in
* ${PWD}/authorized-keys - path to file containing user's SSH public keys in the following format

```
user1:ssh-rsa AAA................
user2:ssh-rsa AAA................
```
