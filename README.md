# Preparation

- Have wine installed on a linux machine
- Download a copy of Zorro from https://zorro-project.com/ 
- Run the installed on the linux machine eg. wine Zorro_setup.exe
- When installing, ensure you install Zorro directly to drive c: (No subdirectories). This is just a convienence thing.
- Once the installer is done, create an archive of the ~/.wine directory `tar -czvf ~/full_wine.tgz .wine -C ~/`
- Place the tgz file in the "Zorro" directory, inside this built context and extract it `tar -czvf full_wine.tgz` and rename the result directory to "wine": `mv .wine wine`

# Building

The build is pretty simple, just run `docker build -t zorro:latest .`, inside this build context.

# Running

Once the image is built, you can run it, no arguments required:


```bash
docker run -d -n zorro \ 
	-p 5900:5900 \
	-v $(pwd)/zorro_data/History:/home/winer/.wine/drive_c/Zorro/History \
	-v $(pwd)/zorro_data/Strategy:/home/winer/.wine/drive_c/Zorro/Strategy \
	-v $(pwd)/zorro_data/Log_1:/home/winer/.wine/drive_c/Zorro/Log \
	zorro:latest
```


Just check what the VNC passwor is in the docker logs:

`docker logs zorro`

Then you will be able to connect via vnc on port 5900

I've also added a docker-compose.yaml, for easy of use:

`docker-compose up`
