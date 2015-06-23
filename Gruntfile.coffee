module.exports = (grunt) ->

  grunt.initConfig

    coffee:
      compile_src:
        expand: true
        flatten: false
        src: ['**/*.coffee']
        cwd: 'src/'
        dest: 'js/'
        ext: '.js'

    jade:
      all:
         

    watch:
      compile_src:
        files: ['src/**/*.coffee']
        tasks: ['coffee:compile_src']
        options: {
          spawn: false
        }


  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['coffee']
