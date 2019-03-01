ARG tag=18.06-dind
FROM library/docker:${tag}

COPY entrypoint.sh /usr/bin/

ENV DOCKERDARGS="dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375"
ENV DAEMON=true
ENTRYPOINT ["/usr/bin/entrypoint.sh"] 
