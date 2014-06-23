# roots v2.1.4
# Files in this list will not be compiled - minimatch supported
ignore_files: ['_*', 'README*', '.gitignore', '.DS_Store']
ignore_folders: ['.git', 'node_modules']

watcher_ignore_folders: ['components', 'node_modules']

# Layout file config
# `default` applies to all views. Override for specific
# views as seen below.
layouts:
  default: 'layout.jade'
  # 'special_view.jade': 'special_layout.jade'

# Locals will be made available on every page. They can be
# variables or (coffeescript) functions.
locals:
  title: 'GEF Developers'

# Precompiled template path, see http://roots.cx/docs/#precompile
# templates: 'views/templates'
