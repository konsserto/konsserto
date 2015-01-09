var gulp = require('gulp');
var coffee = require('gulp-coffee');
var plumber = require('gulp-plumber');
var clean = require('gulp-clean');
var k, a, exitCode = -1;


var namespaces = require('ks-npm');
var bundle = Object.keys(namespaces);
var tasks = [];


bundle.forEach(function(taskName) {
	tasks.push(taskName);
	gulp.task(taskName, function() {
		var req = namespaces[taskName];
		var ext = req+'**/*.coffee';
		return gulp.src(ext)
			.pipe(plumber({errorHandler: function (err) {
				console.log(err);
			}}))
			.pipe(coffee({bare: true}))
			.pipe(gulp.dest(req));
	});
});


gulp.task('coffee', tasks,function () {
	process.stdin.pause();

	return gulp.src(['src/**/*.coffee'])
		.pipe(plumber({errorHandler: function (err) {
			console.log(err);
		}}))
		.pipe(coffee({bare: true}))
		.pipe(gulp.dest('src'));
});


gulp.task('konsole',['coffee'],function(){
	var Kernel = require('konsserto')
	var Application = use('@Konsserto/Component/Console/Application')
	var ArgvInput = use('@Konsserto/Component/Console/Input/ArgvInput')
	var ArrayInput = use('@Konsserto/Component/Console/Input/ArrayInput')
	input = new ArgvInput()
	k = new Kernel('dev',true,'console');
	process.on('SIGINT', function () {
		gulp.start('shutdown')
	});
	a = new Application(k);
	exitCode = a.run(input)
	if (exitCode == 0)
		gulp.start('shutdown');
	return true;
});


gulp.task('remove', function () {
	if (process.argv[2] == "--keep-js" || process.argv[2] == "-k")
		return true;
	return gulp.src([
		'src/**/*.js',
		//require('ks-npm')['Konsserto']+'**/*.js',
		'!src/**/Resources/**/*.js'
	], {read: false}).pipe(clean());
});


gulp.task('shutdown', ['remove'], function () {
	return k.shutdown(exitCode);
});


gulp.start('konsole');