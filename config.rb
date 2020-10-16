# TODO: keep this only until this is fixed https://github.com/middleman/middleman/issues/2312
require 'lib/middleman_2312_patch'

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

activate :blog do |blog|
  blog.name = 'best_practices'
  blog.permalink = 'best-practices/:title.html'
  blog.sources = 'best_practices/:title.html'
  blog.default_extension = '.md'
  blog.summary_separator = /(READMORE)/
  blog.layout = 'best_practices_article'
end

activate :directory_indexes
activate :livereload

# Assets Directories

set :images_dir, 'assets/images'
set :css_dir,    'assets/stylesheets'
set :js_dir,     'assets/javascripts'
set :fonts_dir,  'assets/fonts'

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end
