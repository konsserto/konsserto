var bundles = [
    use('@Konsserto/Bundle/FrameworkBundle/FrameworkBundle'),
    use('@Konsserto/Bundle/NodeORMBundle/NodeORMBundle'),
    use('@Konsserto/Bundle/TwigBundle/TwigBundle'),
    use('@jrk/joo/jrkjoobundle')
];

bundles.push(use('@JRK/HelloBundle/JRKHelloBundle'));
//bundles.push(use('@LOK/RestBundle/LOKRestBundle'));
bundles.push(use('@Devlic/SocketExample/ChatBundle/DevlicSocketExampleChatBundle'));
module.exports = bundles;