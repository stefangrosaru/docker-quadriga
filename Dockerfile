FROM alpine:latest
COPY . .
CMD ./quadriga config -k $key && ./quadriga http -p $port $flags