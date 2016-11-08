require 'rubygems'
require 'cairo'

SIZE = 1000

# Initializing Cairo surface and context
surface = Cairo::ImageSurface.new(:argb32, SIZE, SIZE)
context = Cairo::Context.new(surface)
context.scale(SIZE, SIZE)
context.set_source_rgb(1,1,1) # parametrize?
context.rectangle(0,0,1,1)
context.fill()

context.set_source_rgba(1,0,0,1)
context.arc(0.5,0.5,0.001,0, Math::PI * 2)
context.fill()

surface.write_to_png('test.png')