class InteractiveCalculator 
  def initialize(io)
    @io = io 
  end

  def run
    @io.puts "Please enter a number"
    first_num = @io.gets.chomp.to_i
    @io.puts "Please enter another number"
    second_num = @io.gets.chomp.to_i

    result = first_num - second_num

    @io.puts "Here is your result:"
    @io.puts "#{first_num} - #{second_num} = #{result}"
  end
end
# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1