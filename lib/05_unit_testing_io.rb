# Challenge
#-------------------------------



# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX

class StringRepeater
  def initialize(io)
    @io = io
  end

  def run
  @io.puts "Hello. I will repeat a string many times."
  @io.puts "Please enter a string"
  chocolate = @io.gets.chomp
  @io.puts "Please enter a number of repeats"
  repeats = @io.gets.chomp.to_i
  @io.puts "Here is your result:"
  @io.puts "#{chocolate * repeats}"
  end

end

string_repeater = StringRepeater.new(Kernel)
string_repeater.run





=begin
  #       Exercise
  #-------------------------------
rescue => exception
  
end
class InteractiveCalculator
  def initialize(io)
     @io = io
  end

  def run
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    num1 = @io.gets.chomp
    @io.puts "Please enter another number"
    num2 = @io.gets.chomp
    @io.puts "Here is your result:"
    @io.puts "#{num1} - #{num2} = #{num1.to_i - num2.to_i}"
    
    
# 
# 4
# Please enter another number
# 3
# 
# 4 - 3 = 1
  end
end

interactive_calculator = InteractiveCalculator.new(Kernel)
interactive_calculator.run


# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1


#note: Kernal. is implicitly put by Ruby usually.
# We have shown it below so we can see easily how we use doubles
# puts "Hello. I will subtract two numbers."
# puts "Please enter a number"
# first_num = Kernal.gets.chomp
# second_num = Kernal.gets.chomp

=end