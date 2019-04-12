FROM gocd/gocd-server:v19.2.0

COPY --chown=root:root config/server.sh /go-server/server.sh

# Install gocd elstic agent plugins
RUN mkdir -p /godata/plugins/external \
    && curl --location --fail https://github.com/gocd/kubernetes-elastic-agents/releases/download/2.1.0-135/kubernetes-elastic-agent-2.1.0-135.jar > /godata/plugins/external/kubernetes-elastic-agent.jar \
    && curl --location --fail https://github.com/gocd-contrib/docker-elastic-agents/releases/download/v2.2.0/docker-elastic-agents-2.2.0-187.jar > /godata/plugins/external/docker-elastic-agent.jar \
    && chown -R 1000 /godata/plugins/external
RUN chmod +x /go-server/server.sh