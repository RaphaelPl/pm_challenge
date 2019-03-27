class StatsView
    def display_menu
            puts "1. Enter numbers"
            puts "2. Display average"
            puts "3. Display Max"
            puts "4. Display Min"
            puts "5. Quit"
            choice = 0
            until choice.between?(1,3)
                print "choose an option (1-3): "
                choice = gets.chomp.to_i
            end
            return choice
        end 
        # common practice to commment the def
        #get a comma separated list of numbers from the user and then 
        #split to an array conmverted to a string, 
        #return the array
        def get_numbers
            puts "Please enter a comma separated list of numbers and when finished hit enter"
            input = gets.strip.split(",")
            #covert each element to and integer and store into a new array
            values = input.map { |x| x.to_i }
            p values #debug line 
            return values
        end
        def display_average(avg, numbers)
            puts "the average #{numbers} is: #{avg}"
        end
        def goobye
            puts "see you next time"
        end
    end
end