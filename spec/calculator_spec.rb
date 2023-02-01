require "./lib/calculator.rb"

describe Calculator do
    describe "#add" do
      it "returns the sum of two numbers" do
        calculator = Calculator.new
        expect(calculator.add(0, -1)).to eql(-1)
      end
     
      it "returns the sum of more than two numbers" do
        calculator = Calculator.new
        expect(calculator.add(2, 5, 7)).to eql(14)
      end
    end
end