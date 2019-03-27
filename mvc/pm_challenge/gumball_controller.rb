require_relative 'gumball_view'
require_relative 'gumball_model'

class GumballMachineController

    def initialize
        @gumballMachineModel = GumballMachineModel.new
        @gumballMachineView = GumballMachineView.new
      end
  
    def run
      @gumballMachineView.greeting
      choice = @gumballMachineView.menu 
      
      while choice != "X"
        if choice == "G"
          gumball = @gumballMachineModel.dispense
          if gumball.nil?
            @gumballMachineView.machineEmpty
          else
            # fill in this line
            @gumballMachineView.getGumball
               
            end
          end
        if choice == "R"
          numGumballs = @gumballMachineModel.refill(6)
          @gumballMachineView.refill(numGumballs) # put something inside the brackets
        end

        choice = @gumballMachineView.menu
      end
      # call the exit method
        @gumballMachineView.exit
    end
  end