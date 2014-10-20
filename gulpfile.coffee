gulp = require 'gulp'
to5 = require 'gulp-6to5'
traceur = require 'gulp-traceur'

DIST = './dist'
TRACEUR = './dist_traceur'
SRC = './src'

paths =
  js: "#{SRC}/**/*.js"

# gulp-6to5
gulp.task 'to5', ->
  gulp.src paths.js
    .pipe to5()
    .pipe gulp.dest(DIST)

# gulp-traceur
gulp.task 'traceur', ->
    gulp.src paths.js
      .pipe traceur()
      .pipe gulp.dest(TRACEUR)

gulp.task 'watch', ->
  gulp.watch paths.js, ['to5', 'traceur']

gulp.task 'default', ['watch']
