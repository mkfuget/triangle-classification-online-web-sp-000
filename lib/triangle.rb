cclass Triangle
  attr_accessor :side_a, :side_b, :side_c 
  def initialize(a, b, c)
    @side_a = a
    @side_b = b
    @side_c = c

  end
  
  def kind 
    if(a+b>=c || a+c>=b || b+c>=a)
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
    if(a==b && b==c)
      return :equilateral
    elsif(a==b || b==c || a==c)
      return :isosceles
    else  
      return :scalene
    end 
    
  class TriangleError < StandardError
    def message "invalud triangle dimensions"
  end
end
