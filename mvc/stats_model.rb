class StatsModel
    def initialize
        @numbers = []
    end
    def set_numbers(numbers)
        @numbers.concat(numbers)
        p "numbers: #{@numbers}" # debug
    end
    def get_numbers
        return @numbers 
    end
    def average(numbers)
        return @model.numbers.sum / @model.numbers.length.to_f
    end
end