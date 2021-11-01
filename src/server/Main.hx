
class Main {
    static function main() {
        var server = js.node.Http.createServer((req, resp) -> {
            resp.writeHead(200, {"Content-Type": "text/plain"});
            resp.write("hello, world\n");
            resp.end();
        });

        final port = 8000;
        server.listen(port);

        trace('sever is running on ${port}');
    }
}