require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  it "runs, and subtracts 3 from 4 to equal 1" do
    io = double :io

    expect(io).to receive(:puts).with("Please enter a number").ordered
    expect(io).to receive(:gets).and_return('4').ordered
    expect(io).to receive(:puts).with("Please enter another number").ordered
    expect(io).to receive(:gets).and_return('3').ordered
    expect(io).to receive(:puts).with("Here is your result:").ordered
    expect(io).to receive(:puts).with("4 - 3 = 1").ordered

    interactive_calculator = InteractiveCalculator.new(io)
    interactive_calculator.run
  end

  it "runs, and subtracts 6 from 7 to equal 1" do
    io = double :io

    expect(io).to receive(:puts).with("Please enter a number").ordered
    expect(io).to receive(:gets).and_return('7').ordered
    expect(io).to receive(:puts).with("Please enter another number").ordered
    expect(io).to receive(:gets).and_return('6').ordered
    expect(io).to receive(:puts).with("Here is your result:").ordered
    expect(io).to receive(:puts).with("7 - 6 = 1").ordered

    interactive_calculator = InteractiveCalculator.new(io)
    interactive_calculator.run
  end
end