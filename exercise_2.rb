class Rover
  attr_accessor :corordinate_x, :corordinate_y, :direction
  def initialize(corordinate_x, corordinate_y, direction)
    @corordinate_x = corordinate_x
    @corordinate_y = corordinate_y
    @direction = direction
  end

  def where_are_you
    puts "I am at position #{@corordinate_x} and #{@corordinate_y} facing #{@direction}"
  end


  def read_instructions(commands)
    commands.each_char do |command|
      case command
      when "M"
        move
      when "R"
        turn_r
      when "L"
        turn_l
      else
        "Command not recognized"
      end
    end
  end

  def move
    case @direction
    when "N"
      @corordinate_y += 1
    when "S"
      @corordinate_y -= 1
    when "W"
      @corordinate_x -= 1
    when "E"
      @corordinate_x += 1
    end
  end

  def turn_r
    case @direction
    when "N"
      @direction = "E"
    when "E"
      @direction = "S"
    when "S"
      @direction = "W"
    when "W"
      @direction = "N"
  end

  def turn_l
    case @direction
    when "N"
      @direction = "W"
    when "W"
      @directiorn = "S"
    when "E"
      @direction = "N"
    when "S"
      @direction = "E"
    end
  end
  end

end

rover = Rover.new(1,2,"N")
rover2 = Rover.new(3,3,"E")
rover.where_are_you
rover2.where_are_you

puts 'rover 1 where can I take you? Enter "M" to move forward, "L" to spin left "R" to spin Right'
a = gets.chomp.upcase
rover.read_instructions(a)
rover.where_are_you
puts 'rover 2 where can I take you? Enter "M" to move forward, "L" to spin lef "R" to spin Right'
b = gets.chomp.upcase
rover2.read_instructions(b)
rover2.where_are_you
