require_relative './lib/triangle'

argv = ARGV.map(&:to_i)
p Triangle.new(*argv).shape_name
