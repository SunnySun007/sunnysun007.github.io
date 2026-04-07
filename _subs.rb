require 'liquid'
require 'json'

dat = JSON.parse(File.read(ARGV[0]))

template = Liquid::Template.parse($stdin.read)
$stdout.write((template.render(dat)))
