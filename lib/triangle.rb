require "pry"
class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 

  def kind
    if side1 > 0 && side2 > 0 && side3 > 0  && side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2
      if side1 === side2 && side2 === side3
            :equilateral  
      elsif side1 == side2 && side1 != side3
            :isosceles
      elsif side2 == side3 && side2 != side1
            :isosceles
      elsif side3 == side1 && side3 != side2
            :isosceles
      elsif side1 != side2 && side2 != side3
            :scalene  
      end
    else
      begin 
         raise TriangleError
      end
    end
    
  end

  class TriangleError < StandardError
    
  end
end
# newTriangle = Triangle.new(1,2,3)
# newTriangle.kind