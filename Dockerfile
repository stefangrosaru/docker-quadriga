FROM alpine:latest
COPY . .
CMD ./quadriga config -k $key && [ -z "$docker" ] || ./quadriga http -d -s -p $port && ./quadriga http -s -p $port 