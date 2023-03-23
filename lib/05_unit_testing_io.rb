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
