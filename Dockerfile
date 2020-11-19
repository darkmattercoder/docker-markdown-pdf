FROM node:lts-buster
ARG NPM_GLOBAL_PREFIX="/home/node/.npm-global"
ARG WORK_DIR="/doc"
RUN mkdir -p ${NPM_GLOBAL_PREFIX} \
	&& chown node: ${NPM_GLOBAL_PREFIX} \
	&& mkdir -p ${WORK_DIR} \
	&& chown node: ${WORK_DIR}
ENV ENTRYPOINT_DIR=/usr/local/bin
ADD entrypoint.sh ${ENTRYPOINT_DIR}
RUN chmod +x ${ENTRYPOINT_DIR}/entrypoint.sh
USER node
RUN npm config set prefix ${NPM_GLOBAL_PREFIX}
ENV PATH="${NPM_GLOBAL_PREFIX}/bin:${PATH}"
ENV OPENSSL_CONF=/etc/ssl/
RUN npm install -g markdown-pdf --unsafe-perm
WORKDIR ${WORK_DIR}
ENTRYPOINT ["entrypoint.sh"]
