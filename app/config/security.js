var security;

security = {
  xssProtection: true,
  headers_allowed: [
    {
      name: 'Access-Control-Allow-Origin',
      value: '*'
    }, {
      name: 'Access-Control-Allow-Methods',
      value: 'PUT, GET, POST, DELETE, OPTIONS, HEAD, PATCH'
    }, {
      name: 'Access-Control-Allow-Headers',
      value: 'Content-Type'
    }
  ],
  ssl_protocol: {
    active: true,
    key: 'touch/key.pem',
    certificate: 'touch/cert.pem'
  }
};

module.exports = security;
