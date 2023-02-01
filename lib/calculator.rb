class Calculator
    def add(*args)
        args.inject(0) { |sum, item| sum + item }
    end

    def subtract(a,b)
        a - b
    end

    def multiply(*args)
        args.inject(1) { |sum, item| sum * item }
    end

    def divide(a, b)
        a / b
    end
end