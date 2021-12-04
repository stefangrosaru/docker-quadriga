FROM alpine:latest
COPY . .
CMD ./quadriga config -k $key && [ -z "$docker" ] || ./quadriga http -d -p $port && ./quadriga http -p $port 