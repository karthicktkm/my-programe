var http = require('http');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.write('hello, i know nodejitsu. \n')
  res.write('hello , user.')
  res.end();
}).listen(8080);
console.log('> http server has started on port 8080');
