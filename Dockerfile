FROM gocd/gocd-server:v19.2.0

COPY --chown=root:root config/server.sh /go-server/server.sh
RUN chmod +x /go-server/server.sh
RUN git config --global http.sslVerify false
