# Sunshine

Phoenix 1.3 + Cowboy 2.

Now you can visit [`phx.sh:4001`](https://phx.sh:4001) OR [`phx.sh:4002`](http://phx.sh:4002)

I have included a snakeoil cert in `./priv/dev`

You will be able to upload an image to the [`http endpoint`](http://phx.sh:4002) but
it will fail on the [`https endpoint`](https://phx.sh:4001)

NOTE: this is just a dumb proof of concept. Images with the same name will overwrite themselves for example.
So don't use this unless you are testing.

**HERE IS THE ERROR I GET ON HTTPS**

```
[info] POST /images
[debug] ** (Plug.Parsers.ParseError) malformed request, a RuntimeError exception was raised with message "invalid multipart, body terminated too soon"
    (plug) lib/plug/conn.ex:919: Plug.Conn.next_multipart/3
    (plug) lib/plug/conn.ex:885: Plug.Conn.read_part_body/8
    (plug) lib/plug/parsers/multipart.ex:74: Plug.Parsers.MULTIPART.parse_multipart_headers/5
    (plug) lib/plug/parsers/multipart.ex:53: Plug.Parsers.MULTIPART.parse_multipart/5
    (plug) lib/plug/parsers/multipart.ex:43: Plug.Parsers.MULTIPART.parse_multipart/2
    (plug) lib/plug/parsers/multipart.ex:15: Plug.Parsers.MULTIPART.parse/5
    (plug) lib/plug/parsers.ex:221: Plug.Parsers.reduce/4
    (sunshine) lib/sunshine_web/endpoint.ex:1: SunshineWeb.Endpoint.plug_builder_call/2
    (sunshine) lib/plug/debugger.ex:99: SunshineWeb.Endpoint."call (overridable 3)"/2
    (sunshine) lib/sunshine_web/endpoint.ex:1: SunshineWeb.Endpoint.call/2
    (plug) lib/plug/adapters/cowboy2/handler.ex:16: Plug.Adapters.Cowboy2.Handler.upgrade/4
    (cowboy) /Users/madsen/Projects/AAI/sunshine/deps/cowboy/src/cowboy_stream_h.erl:247: :cowboy_stream_h.execute/3
    (cowboy) /Users/madsen/Projects/AAI/sunshine/deps/cowboy/src/cowboy_stream_h.erl:225: :cowboy_stream_h.request_process/3
    (stdlib) proc_lib.erl:247: :proc_lib.init_p_do_apply/3
```
