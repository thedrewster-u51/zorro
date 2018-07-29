FROM boggart/docker-wine-vnc
ADD startwine.sh /usr/local/bin/startwine.sh 
ADD wine /home/winer/.wine
ENTRYPOINT ["/bin/sh","/usr/local/bin/startwine.sh"]
