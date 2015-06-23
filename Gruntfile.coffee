module.exports = (grunt) ->

  grunt.initConfig

    coffee:
      compile_src:
        expand: true
        flatten: false
        src: ['**/*.coffee']
        cwd: 'src/'
        dest: 'www/js/'
        ext: '.js'

    jade:
      all:
        pretty: true
        files: [
          expand: true
          flatten: false
          src: ['**/*.jade']
          cwd: 'templates'
          dest: 'www/'
          ext: '.html'
        ]

    watch:
      compile_src:
        files: ['src/**/*.coffee']
        tasks: ['coffee:compile_src']
        options:
          spawn: false
      jade:
        files: ['templates/**/*.jade']
        tasks: ['jade:all']
        options:
          spawn: false

    sync:
      node_modules:
        verbose: true
        files: [
          cwd: 'node_modules/bootstrap/dist/css/'
          src: 'bootstrap.css'
          dest: 'www/css/'
        ,
          cwd: 'node_modules/angular'
          src: 'angular.min.js'
          dest: 'www/js/'
        ]
        
        
  
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-sync'

  grunt.registerTask 'default', ['coffee', 'jade', 'sync']
