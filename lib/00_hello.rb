#fonction dire bonjour sans saisie nom
def say_hello(nom)
    msg = "bonjour #{nom}"
end 

puts "\nProgramme qui dit bonjour en ruby sans enter de variable"
puts say_hello("rakoto")

#fonction dire bonjour avec saisie nom
def say_hello2(nom)
    msg = "bonjour #{nom}"
end

puts "\nProgramme qui dit bonjour en ruby avec enter de variable"
puts "Saisir votre nom "
first_name = gets.chomp
puts say_hello2(first_name)

#fonction dire bonjour avec 2 methodes differents ask_first_name et  say_hello3 avec saisie nom
def ask_first_name(nom)
    say_hello3(nom)
end 

def say_hello3(nom)
    msg = "bonjour #{nom}"
end 

puts "\nProgramme qui dit bonjour en ruby avec 2 methode differents"
puts "Saisir votre nom "
first_name = gets.chomp
puts ask_first_name(first_name)