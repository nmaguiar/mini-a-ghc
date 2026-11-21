FROM openaf/mini-a:deb-t8 AS main

USER root
RUN apt-get update -y\
 && apt-get install -y curl bash gh jq\
 && curl -fsSL https://gh.io/copilot-install | bash\
 && apt-get clean\
 && rm -rf /var/lib/apt/lists/*\
 && rm -rf /tmp/*\
 && rm -rf /var/tmp/*\
 && /openaf/opack install ghcopilot tika lucene\
 && /openaf/opack install mini-a -force\
 && mkdir -p /openaf/ojobs\
 && curl -s https://ojob.io/oaf/colorFormats.yaml > /openaf/ojobs/colorFormats.yaml\
 && /openaf/oaf --sb /openaf/ojobs/colorFormats.yaml\
 && chown -R openaf:0 /openaf\
 && chown openaf:0 /openaf/.opack.db\
 && chmod -R u+rwx,g+rwx,o+rx,o-w /openaf/*\
 && chmod a+rwx /openaf\
 && chmod g+w /openaf/.opack.db

# Setup alias 
# -----------
RUN printf '%s\n' \
  "alias oafptab='/openaf/oafp in=lines linesvisual=true linesjoin=true out=ctable'" \
  "alias oaf-light-theme='colorFormats.yaml op=set theme=thin-light-bold'" \
  "alias oaf-dark-theme='colorFormats.yaml op=set theme=thin-intense-bold'" \
  "alias list='/openaf/oafp libs=\"@AWS/aws.js,@ghcopilot/ghcopilot.js\" in=llmmodels data=\"()\"'" \
  "alias mini-a='/openaf/opack exec mini-a'" \
  "alias help='/usr/local/bin/mini-a-ghc-entrypoint.sh help'" \
  "alias help-wiki='/usr/local/bin/mini-a-ghc-entrypoint.sh help-wiki'" \
  'export PATH="$PATH:/openaf:/openaf/ojobs"' \
  > /etc/profile.d/openaf-mini-a.sh \
 && printf '%s\n' '. /etc/profile.d/openaf-mini-a.sh' >> /etc/bash.bashrc

COPY USAGE.md /openaf/USAGE.md
COPY help/ /openaf/help/
COPY entrypoint.sh /usr/local/bin/mini-a-ghc-entrypoint.sh
COPY wiki.sh /usr/local/bin/wiki
RUN gzip -9 /openaf/USAGE.md /openaf/help/*.md\
 && chmod 644 /openaf/USAGE.md.gz /openaf/help/*.md.gz\
 && chmod 755 /usr/local/bin/mini-a-ghc-entrypoint.sh /usr/local/bin/wiki

# -------------------
FROM scratch AS final
COPY --from=main / /

ENV LANG=C.utf8
ENV LC_ALL=C.utf8
ENV OAF_HOME=/openaf
ENV PATH=$PATH:$OAF_HOME
ENV OAF_MINI_A_LIBS="@ghcopilot/ghcopilot.js"

USER openaf

WORKDIR /home/openaf
ENTRYPOINT ["/usr/local/bin/mini-a-ghc-entrypoint.sh"]
