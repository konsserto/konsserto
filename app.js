var gulp = require('gulp');
var coffee = require('gulp-coffee');
var plumber = require('gulp-plumber');
var clean = require('gulp-clean');
var nodemon = require('gulp-nodemon');
var mocha = require('gulp-mocha');
var k, input;

var namespaces = require('ks-npm');
var bundle = Object.keys(namespaces);
var tasks = [];
var tasks_ignore = [''];

bundle.forEach(function (taskName) {
    if (tasks_ignore.indexOf(taskName) < 0) {
        tasks.push(taskName);
        gulp.task(taskName, function () {
            var req = namespaces[taskName];
            var ext = req + '**/*.coffee'
            return gulp.src(ext)
                .pipe(plumber({
                    errorHandler: function (err) {
                        console.log(err);
                    }}))
                .pipe(coffee({bare: true}))
                .pipe(gulp.dest(req));
        });
    }
});


gulp.task('coffee', tasks, function () {
    process.stdin.pause();
    return gulp.src(['**/*.coffee','!node_modules/'])
        .pipe(plumber({
            errorHandler: function (err) {
                console.log(err);
            }}))
        .pipe(coffee({bare: true}))
        .pipe(gulp.dest(''));
});


gulp.task('kernel', ['coffee'], function () {
    var Kernel = require('konsserto');
    var ArgvInput = use('@Konsserto/Component/Console/Input/ArgvInput');
    var InputOption = use('@Konsserto/Component/Console/Input/InputOption');
    var InputDefinition = use('@Konsserto/Component/Console/Input/InputDefinition');
    var definition = new InputDefinition([new InputOption('--nodemon', '-n'), new InputOption('--keep-js', '-k')]);
    input = new ArgvInput(process.argv, definition, null, true);

    if (input.getOption('nodemon')) {
        nodemon({ script: 'start.js', ext: 'html twig css less coffee', ignore: ['node_modules/*', '*.js'] })
            .on('change', ['coffee'])
            .on('restart', function () {
                console.log('Konsserto restarted !');
            }
        );
    } else {
        k = new Kernel;
        configs = require('./app/config/config');

        port = 3000;
        if (configs.port) {
            port = configs.port;
        }

        k.start(port);
        process.on('SIGINT', function () {
            gulp.start('shutdown');
        });
    }
});

gulp.task('mocha', ['kernel'], function () {
    return gulp.src('./test/**/*.js', {read: false})
        .pipe(mocha({reporter: 'list'}));
});

gulp.task('remove', function () {
    if (input.getOption('keep-js'))
        return true;
    return gulp.src([
        'src/**/*.js',
        //require('ks-npm')['Konsserto']+'**/*.js',
        '!src/**/Resources/**/*.js'
    ], {read: false}).pipe(clean());
});

gulp.task('shutdown', ['remove'], function () {
    return k.shutdown(0);
});

gulp.start('mocha');
