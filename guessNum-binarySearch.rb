MAX_VALUE = 300000000
MAX_TRIES = Math.log2(MAX_VALUE).ceil

hidden = rand(MAX_VALUE) + 1
checks_called = 0

define_method :check do |guess|
  checks_called += 1

  if checks_called > MAX_TRIES + 1
    raise "check called too many times"
  end

  if guess > hidden
    1
  elsif guess < hidden
    -1
  else
    0
  end
end

def guess_number(min, max)

  done = false
  while not done
    middle_guess = ((max - min) / 2) + min
    puts "Low: #{min}, High: #{max}, Mid: #{middle_guess}"
    high_or_low = check(middle_guess)
    case high_or_low
    when 0
      done = true
      return middle_guess
    when -1
      #puts "Guess again, your answer was too low: #{middle_guess}"
      min = middle_guess
    when 1
      #puts "Guess again, your answer was too high: #{middle_guess}"
      max = middle_guess
    end
  end #end while loop
  #puts "Your hidden number is: #{middle_guess}"

end

guess = guess_number(1, MAX_VALUE)

if guess == hidden
  puts "Guessed correctly!"
  exit 0
else
  puts "Invalid guess."
  exit 1
end









