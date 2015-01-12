security =
  xssProtection: true, # Optional, default : true
  headers_allowed: [ # Optional, no default value
    {
      name: 'Access-Control-Allow-Origin',
      value: '*'
    },
    {
      name: 'Access-Control-Allow-Methods',
      value: 'PUT, GET, POST, DELETE, OPTIONS, HEAD, PATCH'
    },
    {
      name: 'Access-Control-Allow-Headers',
      value: 'Content-Type'
    }
  ],
  ssl_protocol: # Optional, no default value
    active: true, # Optional, default : false
    key: 'touch/key.pem',
    certificate: 'touch/cert.pem'

module.exports = security;