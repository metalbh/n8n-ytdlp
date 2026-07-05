FROM alpine:3.23 AS alpine

FROM n8nio/n8n:2.29.1
USER root
COPY --from=alpine /sbin/apk /sbin/apk
COPY --from=alpine /usr/lib/libapk.so* /usr/lib/
RUN apk add --no-cache gcompat ffmpeg
USER node
