module TipCalc

def run_program
  bill = get_bill
  split_size = party_size
  tip_percent = tip_amount
  totaltip_amount = total_tip_amount(bill, tip_percent)
  totalbill = total_bill_amount(bill, totaltip_amount)
  yoursplit_amount = your_split(totalbill, split_size)
  run_prog_again
end


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


# Gets size of users party (how many people to split with?)
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


## Gets the amount of tip based off a percent
  def total_tip_amount(bill, tip_percent)
    tip_total = bill * tip_percent
    puts "The total tip amount is #{tip_total}"
    tip_total
  end


## Gets total bill amount (bill + tip)
  def total_bill_amount(tip_total, bill)
    bill_total = tip_total + bill
    puts "The total is #{bill_total}"
    bill_total
  end


## Gets your split of the bill (bill_total / split)
  def your_split(totalbill, split_size)
    single_split = totalbill / split_size
    puts "Your split of the bill is #{single_split}"
    single_split
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
    end
  end

end
