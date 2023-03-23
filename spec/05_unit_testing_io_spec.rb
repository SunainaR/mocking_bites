require '05_unit_testing_io'

RSpec.describe InteractiveCalculator do
  it "it requests two numbers and returns a calculation phrase" do
    io = double :io
    calc = InteractiveCalculator.new(io)
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(io).to receive(:puts).with("Please enter a number").ordered
    expect(io).to receive(:gets).and_return("4").ordered
    expect(io).to receive(:puts).with("Please enter another number").ordered
    expect(io).to receive(:gets).and_return("3").ordered
    expect(io).to receive(:puts).with("Here is your result:").ordered
    expect(io).to receive(:puts).with("4 - 3 = 1").ordered
    calc.run
  end
end