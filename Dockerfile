FROM boggart/docker-wine-vnc
ADD startwine.sh /usr/local/bin/startwine.sh 
ADD Zorro /home/winer/Zorro
ENTRYPOINT ["/bin/sh","/usr/local/bin/startwine.sh"]
