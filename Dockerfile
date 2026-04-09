FROM openaf/mini-a:deb-t8

USER root
RUN apt-get update -y\
 && apt-get install -y curl bash gh\
 && curl -fsSL https://gh.io/copilot-install | bash\
 && apt-get clean\
 && rm -rf /var/lib/apt/lists/*\
 && rm -rf /tmp/*\
 && rm -rf /var/tmp/*\
 && /openaf/opack install ghcopilot

COPY entrypoint.sh /usr/local/bin/mini-a-ghc-entrypoint.sh
RUN chmod 755 /usr/local/bin/mini-a-ghc-entrypoint.sh

ENV OAF_MINI_A_LIBS="@ghcopilot/ghcopilot.js"

USER openaf

ENTRYPOINT ["/usr/local/bin/mini-a-ghc-entrypoint.sh"]
CMD ["/openaf/opack", "exec", "mini-a"]
