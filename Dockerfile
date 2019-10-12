FROM alpine:3.10

RUN apk update \
 && apk add --no-cache gcc libc-dev curl lua-dev luarocks5.1 \
 && ln -s /usr/bin/luarocks-5.1 /usr/bin/luarocks \
 && luarocks install luacheck

COPY entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]