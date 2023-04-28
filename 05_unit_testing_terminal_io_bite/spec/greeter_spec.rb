require 'greeter'

RSpec.describe Greeter do
  it "asks the user for their name and says hello" do
    io = double :io
    expect(io).to receive(:puts).with("What is your name?")
    expect(io).to receive(:gets).and_return("Will")
    expect(io).to receive(:puts).with("Hello, Will!")
    greeter = Greeter.new(io)
    greeter.greet
  end
end