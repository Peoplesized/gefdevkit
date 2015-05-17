# # roots v2.1.4
# # Files in this list will not be compiled - minimatch supported


# # Layout file config
# # `default` applies to all views. Override for specific
# # views as seen below.
# layouts:
#   default: 'layout.jade'
#   # 'special_view.jade': 'special_layout.jade'

# # Locals will be made available on every page. They can be
# # variables or (coffeescript) functions.
# locals:
#   title: 'GEF developers toolkit'

# # Precompiled template path, see http://roots.cx/docs/#precompile
# # templates: 'views/templates'

axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee'),
    css_pipeline(files: 'assets/css/*.styl')
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true