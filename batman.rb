puts "Welcome to Batman: Arkham Asylum!"
puts "What do you want to do?"
puts "Options: look around, smack a prisoner, run away"
option = gets.chomp
case option
when "look around"
    puts "You see a bunch of angry prisoners and the Joker!"
when "smack a prisoner"
    puts "Ouch! What did I ever do to you, man?"
when "run away"
    puts "Batman: \"Bats can't run.\""
else
    puts "A prisoner punches you in the face."
    puts "Prisoner: \"Quit messin' around.\""
end