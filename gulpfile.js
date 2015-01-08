var gulp = require('gulp'),
coffee = require('gulp-coffee'),
plumber = require('gulp-plumber');



gulp.task('default',function(){
	gulp.watch(['**/*.coffee','!node_modules/**/*'],['coffee']);
});
var onError = function (err) {
	console.log(err);
};

gulp.task('coffee',function(){
	return gulp.src(['src/**/*.coffee','node_modules/konsserto/src/**/*.coffee'])
	.pipe(plumber({errorHandler: onError}))
	.pipe(coffee({
		bare: true
	}))
	.pipe(gulp.dest(''));
});

