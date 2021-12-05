FROM alpine:latest
COPY . .
CMD test -f "$HOME/.quadriga.yml" || ./quadriga config -k $key; ./quadriga http -p $port $flags