FROM adoptopenjdk/openjdk11:alpine-slim

ARG RUNUSER=benny
ARG RUNGROUP=${RUNUSER}
ARG APP_DIR=/home/benny/

RUN \
    addgroup -S ${RUNGROUP} \
    && adduser -S ${RUNUSER} -G ${RUNGROUP}

RUN mkdir -p ${APP_DIR} \ 
    && chown ${RUNUSER}:${RUNGROUP} ${APP_DIR}
USER ${RUNUSER}
COPY --chown=${RUNUSER}:${RUNGROUP} target/my-app-*.jar ${APP_DIR}/myjar.jar 
 
CMD ["java","-jar","/home/benny/myjar.jar"]
