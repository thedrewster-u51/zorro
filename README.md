# Preparation

- Have wine installed on a linux machine
- Download a copy of Zorro from https://zorro-project.com/ 
- Run the installed on the linux machine eg. wine Zorro_setup.exe
- When installing, ensure you install Zorro directly to drive c: (No subdirectories). This is just a convienence thing.
- Once the installer is done, create an archive of the wine "drive_c" directory "tar -czvf ~/Zorro.tgz ~/.wine/drive_c" 
- Place the tgz file in the "Zorro" directory, inside this built context and extract it "tar -czvf Zorro.tgz"

# Building

The build is pretty simple, just run "docker build -t zorro:latest .", inside this build context.

# Running

Once the image is built, you can run it, no arguments required:

"docker run -d -n zorro -p 5900:5900 zorro:latest"

Just check what the VNC passwor is in the docker logs:

"docker logs zorro" 

Then you will be able to connect via vnc on port 5900
