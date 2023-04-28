require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  it "runs, and subtracts two numbers" do
    interactive_calculator = InteractiveCalculator.new(Kernel)
    interactive_calculator.run
  end
end