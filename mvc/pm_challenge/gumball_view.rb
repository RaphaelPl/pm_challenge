
class GumballMachineView

    def greeting
      # output a greeting message to the console
      puts "Hey there, would you like some gumball/s?"
    end
  
    def menu
      choice = nil
      while choice != "G" && choice != "R" && choice != "X"
        puts "Press G to get a gumball, R to refill, or X to exit"
        choice = gets.chomp.upcase
      end
      
       return choice
    end
  
    def getGumball
      puts "Yum, here's your gumball"
    end
  
    def machineEmpty
      # output an appropriate message to the console
      puts "this machine is empty \n you are greedy!"
    end
  
    def refill(count)
      # output an appropriate message to the console.
      puts "machine now full again"
      # Make sure you tell the user how many gumballs there are now!
      puts "there are #{count}"
    end
  
    def exit
      # output an appropriate message to the console
      puts "see ya mate"
    end
  
  end