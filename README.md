# Docker for creating keter binary


https://github.com/snoyberg/keter


Usage:


###Build the container
```
docker build -t yourname@keter-build .
```

(you can also use gdoteof/keter-build which is an autobuild of this repository)

###Copy the built executable
```
docker run --name keter -d gdoteof@keter-build tail -f /dev/null
docker cp keter:/root/keter/dist/build/keter .
docker stop keter
```


###Use as development environment for keter
  - todo
