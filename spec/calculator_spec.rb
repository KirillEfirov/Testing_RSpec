require "./lib/calculator.rb"

describe Calculator do
    before(:each) do
      @calculator = Calculator.new
    end

    describe "#add" do
      it "returns the sum of two numbers" do
        expect(@calculator.add(0, -1)).to eql(-1)
      end
     
      it "returns the sum of more than two numbers" do
        expect(@calculator.add(2, 5, 7)).to eql(14)
      end
    end

    describe "#subtract" do
        it "returns the subtaction of two numbers" do
          expect(@calculator.subtract(0, -1)).to eql(1)
        end
    end

    describe "#multiply" do
        it "returns the multiplication of two numbers" do 
            expect(@calculator.multiply(1, 0)).to eql(0)
        end
        
        it "returns the multiplication of more than two numbers" do 
            expect(@calculator.multiply(1, 1, 4)).to eql(4)
        end
    end

    describe "#divide" do
        it "returns division of two numbers" do
            expect(@calculator.divide(5, 5)).to eql(1)
        end

        it "should return ZeroDivisionError" do
          expect{ @calculator.divide(5, 0) }.to raise_error(ZeroDivisionError)
      end
    end
end