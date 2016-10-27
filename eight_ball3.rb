@answer_options = ["No", "Yes", "Perhaps, what does your intuition tell you?", "Maybe", "Ask your Mom."]
@user_array = []
@combined_bank = []
@history = []

def menu_options
  puts "\n--Welcome to the Magic 8 Program--\n"
  puts "1) Ask a Question."
  puts "2) Add your own answer to Magic 8."
  puts "3) Display History"
  puts "4) Reset"
  puts "5) See Answer Bank"
  puts "6) Exit"
end

def die
  puts "\nGoodbye, Thanks for using Magic 8!"
  exit
end

def add
  add_answer = gets.strip
  @user_array.push(add_answer)
end

def option_1
  @answer_options2 = @answer_options.clone
  @user_array2 = @user_array.clone
  puts "What would you like to know?"
  user_answer = gets.strip.downcase
  combine = @answer_options.concat(@user_array)
  combined_ans = combine.sample()
  final = ("#{user_answer} = #{combined_ans}")
  @history << final
  puts
  puts combined_ans
end

def option_2
  puts "What answer would you like to add?"
  add
  puts "Your answer has been added to the bank!"
end

def history
  puts "\n---History---"
  @history.each do |history|
    puts history
  end
end

def reset
  puts "\nAre you sure? Y or N"
  reset_answer = gets.strip.downcase
  if reset_answer == 'y'
    @user_array.clear
    puts "Your answers have been reset!"
  else
    menu_answer
  end
end

def answer_bank
  @answer_options2 = @answer_options.clone
  @user_array2 = @user_array.clone
  @combined_bank << @answer_options2.concat(@user_array2)
  puts "---Answer Bank---"
  @combined_bank.flatten.each do |bank|
    puts bank
  end
end


def menu_answer
  menu_options
  option = gets.strip.to_i
  case option
  when 1
    option_1
  when 2
    option_2
  when 3
    history
  when 4
    reset
  when 5
    answer_bank
  when 6
    die
  end
end









#   puts "\nAsk the 8 Ball a question: \n"
#   @user_answer = gets.strip.downcase    #asking for strip incase user types quit
#   die if @user_answer == 'quit'
#   puts
#   puts @answer_options.sample
# end

while true
  menu_answer
end
