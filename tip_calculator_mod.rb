module TipCalc

def intialize_program
    @bill
    @split_size
    @tip_percentage
    @tip_total
    @bill_total
    @single_split
    @run_again
end

def run_program
  get_bill
  party_size
  tip_amount
  total_tip_amount
  total_bill_amount
  your_split
  run_prog_again
end



  def get_bill
    puts "How much is the bill?"
    @bill = gets.chomp.to_f
    case @bill
    when 0.0
      puts "Invalid response, please enter a number."
      get_bill
    else
      puts "Your bill is #{@bill}"
    end
  end

  def party_size
    puts "How many people will split the bill?"
    @split_size = gets.chomp.to_i
  case @split_size
  when 0
    puts "Invalid response, please enter a number 1 - 999"
    party_size
  else
    puts "The bill will be split between #{@split_size} people."
  end
  end

  def tip_amount
    puts "What percent tip would you like to leave (please enter a decimal)?"
    @tip_percentage = gets.chomp.to_f
    case @tip_percentage
    when nil
      @tip_percentage = 0.2
    when 0.0
      puts "Tipping is customary, please add a decimal value."
      tip_amount
    else
      tip_percent = @tip_percentage * 100
      puts "You will leave a  #{tip_percent.floor}% tip."
    end
  end

  def total_tip_amount
    @tip_total = @bill * @tip_percentage
    puts "The total tip amount is #{@tip_total}"
  end

  def total_bill_amount
    @bill_total = @tip_total + @bill
    puts "The total is #{@bill_total}"
  end

  def your_split
    @single_split = @bill_total / @split_size
    puts "Your split of the bill is #{@single_split}"
  end

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
