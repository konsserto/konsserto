var bundles = [
    use('@Konsserto/Bundle/FrameworkBundle/FrameworkBundle'),
    use('@Konsserto/Bundle/TwigBundle/TwigBundle')
];

//bundles.push(use('@LOK/RestBundle/LOKRestBundle'));
bundles.push(use('@MF/TestBundle/MFTestBundle'));
module.exports = bundles;