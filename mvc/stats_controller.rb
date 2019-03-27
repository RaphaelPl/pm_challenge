require_relative 'stats_view'
require_relative 'stats_model'

class StatsController
        def initialize
            @view = StatsView.new
            @model = StatsModel.new
        end
        def average(numbers)
            return @model.get_numbers.sum / @model.get_numbers.length.to_f
        end
    def max
    end
    def min
    end
    def menu
        exit = false
        # will loop until the user wants to quit
        while !exit
        # displays the menu to the user
        # get choice from the menu -- further decided that this should be handled by the return value of the view
        choice = @view.display_menu 
        # call the chosen menu
        case choice
        when 1
            #enter number
            numbers = @view.get_numbers
            @model.set_numbers(numbers)
            p numbers # DEBUG
        when 2
            #calc average
            #gets data from the model then passes it to the average method.
            #display average
        # display the menu
        @view.display_average(average, @model.get_numbers)
        # reset menu to inital state -- menu display will work as a loop structure
        when 3 
        # quit
        @view.goodbye
    end
end