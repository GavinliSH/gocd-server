FROM gocd/gocd-server:v19.2.0

COPY --chown=root:root config/server.sh /go-server/server.sh
RUN chmod +x /go-server/server.sh
RUN chown -R go:go /home/go
COPY --chown=go:go config/.gitconfig /home/go/.gitconfig
