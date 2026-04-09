FROM openaf/mini-a:deb-t8

USER root
RUN apt-get update \
 && apt-get install -y --no-install-recommends gh git nodejs npm \
 && npm install -g @github/copilot \
 && /openaf/opack install ghcopilot \
 && printf '%s\n' '#!/bin/sh' 'set -e' '' 'if [ "$#" -eq 0 ]; then' '  exec /openaf/opack exec mini-a' 'fi' '' 'exec "$@"' > /usr/local/bin/ghcopilot-entrypoint \
 && chmod +x /usr/local/bin/ghcopilot-entrypoint \
 && rm -rf /var/lib/apt/lists/*

ENV OAF_MINI_A_LIBS="@AWS/aws.js,@ghcopilot/ghcopilot.js"
ENTRYPOINT ["/usr/local/bin/ghcopilot-entrypoint"]
CMD ["/openaf/opack", "exec", "mini-a"]

USER openaf
