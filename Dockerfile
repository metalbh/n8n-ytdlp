FROM n8nio/n8n:2.29.1
   USER root
   RUN apk add --no-cache gcompat ffmpeg
   USER node
