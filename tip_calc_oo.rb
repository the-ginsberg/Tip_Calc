module TipCalc

  class Calculator


    def initialize(bill, tip_amount, split_size)
      @bill = bill
      @tip_amount = tip_amount
      @split_size = split_size
    end

    def calculations
      total_tip_amount = @bill * @tip_amount
      total_bill_amount = @bill + total_tip_amount
      split_amount = total_bill_amount / @split_size
      tip_percent_display = @tip_amount * 100

      puts <<-END
      The bill was initially $#{@bill}.
      you are leaving a #{tip_percent_display}% tip.
      The total tip is $#{total_tip_amount}.
      The total bill is $#{total_bill_amount}.
      Your split of the bill is #{split_amount}.
      END
    end
  end

############ TESTING ############
  # calctest = Calculator.new(10, 0.2, 2)
  # calctest1 = Calculator.new(100, 0.2, 3)
  #
  #
  # calctest.calculations
  # puts
  # puts
  #
  # calctest1.calculations
  # puts
  # puts
  #
  # calctest.calculations
  ############ TESTING ############


  def run_program

  puts <<-END
  Welcome to Jeff's awesome Object Oriented Tip Calculator!
  If you provide us with the Bill, Tip %, and Party Size
  We can calculate the total and split for you.
  END

  x = get_bill
  y = tip_amount
  z = party_size

  calctest3 = Calculator.new(x, y, z)
  calctest3.calculations

  end

##### METHODS FOR PROGRAM BELOW HERE #############

  ## Gets amount of bill.
    def get_bill
      puts "How much is the bill?"
      bill = gets.chomp.to_f
      case bill
      when 0.0
        puts "Invalid response, please enter a number."
        get_bill
      else
        bill
      end
    end

  ## Gets percent of tip user wants to leave.
    def tip_amount
        puts <<-END
        What percent tip would you like to leave?
        a) 20%   b) 15%   c) 10%   d) custom amount
        END
        user_tip = gets.chomp
        case user_tip
        when "a"
        puts "You have selected a 20% tip."
        tip_percentage = 0.20

        when "b"
        puts "You have selected a 15% tip."
        tip_percentage = 0.15

        when "c"
        puts "You have selected a 10% tip."
        tip_percentage = 0.10

        when "d"
          puts "What percent tip would you like to leave? (please enter a decimal)"
          tip_percentage = gets.chomp.to_f
          case tip_percentage
          when 0.0
          puts "Tipping is customary, please add a decimal value."
          tip_amount
          else
          tip_percent_amount = tip_percentage * 100
          puts "You will leave a  #{tip_percent_amount.floor}% tip."
          tip_percentage
          end
        else
          puts "Invalid response."
          tip_amount
        end
      end


    ## Gets size of users party (how many people to split with?)
      def party_size
          puts "How many people will split the bill?"
          split_size = gets.chomp.to_i
        case split_size
        when 0
          puts "Invalid response, please enter a number 1 - 999"
          party_size
        else
          split_size
        end
      end

    ## Does user want to run program again?
      def run_prog_again
        puts "Calculate another bill?"
        puts "(Y)es or (n)o"
        response = gets.chomp
        case response
        when 'n'
          @again = false
        else
          puts
          puts
          puts
        end
      end

end
