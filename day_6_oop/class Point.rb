class Point

  attr_accessor :x
  attr_accessor :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def quadran
    return 1 if (@x > 0 && @y > 0) || (@x == 0 && @y == 0)
    return 2 if @x < 0 && @y > 0
    return 3 if @x < 0 && @y < 0
    return 4 if @x > 0 && @y < 0
  end

  def print
    puts "(#{@x}, #{@y})"
  end



  def move_left(number)
    @x -= number
  end

  def move_right(number)
    @x += number
  end

  def move_up(number)
    @y += number
  end

  def move_down(number)
    @y -= number
  end

end



class Line

  def initialize(start, finish)
    @start = start
    @finish = finish
  end

  def print
    puts self.start.to_s
    puts selft.finish.to_s 
    # puts "[(#{@start.x}, #{@start.y}), (#{@finish.x}, #{@finish.y})]"
  end

  def length
    (( (@finish.x - @start.x)**2 + (@finish.y - @start.y)**2 ).to_f) ** (0.5)
  end

  def gradient
    (@finish.y - @start.y).to_f / (@finish.x - @start.x).to_f 
  end

  def move_left(number)
    @start.move_left(number)
    @finish.move_left(number)
  end

  def move_right(number)
    @start.move_right(number)
    @finish.move_right(number)
  end

  def move_up(number)
    @start.move_up(number)
    @finish.move_up(number)
  end

  def move_down(number)
    @start.move_down(number)
    @finish.move_down(number)
  end
end



point = Point.new(1,-2)



puts point.quadran

point.print

point2 = Point.new(-9, 3)

puts point.quadran

point.print



line = Line.new(point, point2)

line.print

puts line.length

puts line.gradient



line.move_left(10)

line.print