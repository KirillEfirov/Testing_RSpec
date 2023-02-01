class Calculator
    def add(*args)
        args.inject(0) { |sum, item| sum + item }
    end
end