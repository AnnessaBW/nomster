class Subray
 attr_accessor :row1, :row2, :row3, :row4

 def initialize (row1, row2, row3, row4)
    
  end 
  
  
image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image
