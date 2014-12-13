var routing = [
    {name: 'html_socket', pattern: '/socket', controller: 'jrkjoobundle:Foo:htmlsocket', method: 'get'},
    {name: 'konsserto_foo', pattern: '/foo', controller: 'jrkjoobundle:Foo:index', method: 'get'},
    {name: 'foo_login', pattern: '/foo/login', controller: 'jrkjoobundle:Foo:login', method: 'post'},
    {name: 'foo_login', pattern: '/foo/login', controller: 'jrkjoobundle:Foo:index'},
    {name: 'foo_form', pattern: '/form', controller: 'jrkjoobundle:Foo:form'},
    {name: 'foo_orm', pattern: '/orm', controller: 'jrkjoobundle:Foo:orm'},
    {name: 'joo_test', pattern: '/test', controller: 'jrkjoobundle:Foo:testing'}
];


module.exports = routing;