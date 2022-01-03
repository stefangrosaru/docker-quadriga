FROM alpine:latest
RUN wget https://get.quadriga.app/apk/$(apk --print-arch)/quadriga
RUN chmod +x quadriga
RUN mv quadriga /usr/local/bin
ENTRYPOINT ["quadriga"]