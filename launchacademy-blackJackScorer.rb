# -*- coding: utf-8 -*-

def assert_equals(a, b)
  if a != b
    raise "assertion failed: #{a} does not equal #{b}"
  end
end


def score(hand)

  # Calculate the best score for the given hand in Blackjack. Each card
  # is worth a certain amount of points:
  #
  # * A face card (K, Q, or J) is worth 10 points.
  # * Aces are worth either 1 or 11 points, whichever yields the score
  #   closest to 21 without exceeding it.
  # * All of the cards are worth their numeric value (2-10).
  #
  # `hand` contains an array of cards. Each card is represented
  # as a string combining the value and the suit.
  #
  # e.g. ["A♠", "2♥", "J♣", "10♦"]

  ##################
  # YOUR CODE HERE #
  ##################

  score = 0
  hand.sort!
  if hand.length == 0
    return 0
  else
    hand.each do |card|
      if (card[0]=="J") || (card[0]=="Q" || (card[0]=="K"))
        score += 10
        puts "if, card: #{card}, score: #{score}"
      elsif card[0,2] == "10"
        score += 10
        puts "elsif 10, card: #{card}, score: #{score}"
      elsif card[0].to_i != 0
        score += card[0].to_i
        puts "elsif, card: #{card}, score: #{score}"
      elsif card[0] == "A"
        puts "Ace card, card: #{card}, score: #{score}"
        if (score + 11) <= 21
          score += 11
          puts "Ace if 11, card: #{card}, score: #{score}"
        elsif (score + 1) > 21
          score -= 9
          puts "Ace elsif minus 10, card: #{card}, score: #{score}"
        else
          score += 1
          puts "Ace elsif +1, card: #{card}, score: #{score}"
        end
      end #end inner if statement
    end #end each loop
    puts "This is the final score: #{score}"
    return score
  end #end if statement
end #end score method


assert_equals(score([]), 0)
assert_equals(score(["2♠"]), 2)
assert_equals(score(["10♣"]), 10)
assert_equals(score(["K♣"]), 10)
assert_equals(score(["A♦"]), 11)
assert_equals(score(["2♠", "8♣"]), 10)
assert_equals(score(["A♦", "A♠"]), 12)
assert_equals(score(["10♦", "3♠", "10♣"]), 23)
assert_equals(score(["A♦", "A♠", "10♣"]), 12)

puts "If you get here, all tests passing..."
