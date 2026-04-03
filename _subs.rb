require 'liquid'
require 'yaml'

cv = YAML.load_file('_data/info.yml')

template = Liquid::Template.parse($stdin.read)
$stdout.write((template.render(cv)))
