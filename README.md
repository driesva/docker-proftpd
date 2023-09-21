# docker-proftpd
        

## Running 

Example run for a proftpd instance:

```bash
docker run -d --net host \
-e FTP_USERNAME=test -e FTP_PASSWORD=test \
-v /path/to/your/ftpdir:/home/$FTP_USERNAME \
driesva/proftpd:latest
```
      

## Building

Example for building (and pushing) the image yourself:

```bash
docker buildx build --platform linux/amd64,linux/arm64 --no-cache -t driesva/proftpd:1.3.8 -t driesva/proftpd:latest --push .
````

See Docker documentation for more info:
* https://docs.docker.com/engine/reference/commandline/build/
* https://docs.docker.com/engine/reference/commandline/buildx_build/
