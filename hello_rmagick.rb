# encoding: utf-8

require 'rmagick'
include Magick

my_text = 'Hello RMagick'
font = 'Consolas'
output_file = 'Hello_RMagick.png'

texture = ImageList.new('granite:')
canvas = ImageList.new
canvas.new_image(500, 100, TextureFill.new(texture))

text = Draw.new
text.annotate(canvas, 0,0,0,0, my_text) do
  self.font = font
  self.pointsize = 48
  self.font_weight = BoldWeight
  self.gravity = CenterGravity
  self.fill = 'darkred'
end

canvas.write(output_file)

