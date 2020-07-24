etage = 10
escalier = 0
partie = 'o'
nombre_de_partie = 0

puts "//Lancement de la partie//"
while partie == 'o'
    puts "=============================================================="
    puts "Le dE se lance..."
    d_random = rand(1..6)
    puts "Le dE fait #{d_random} :)"
    case d_random
        when 5 ,6
          puts "\n (^_^) Bravo!!! Vous avez avancer une marche"
          escalier = escalier + 1
          if escalier < 0
            escalier = 0
          end
          puts "Vous etes sur la case : #{escalier}"
        when 1
          puts "\n (>_<) oh! Courage, ce n'est pas la fin du monde,  (^_^) Vous descend une marche"
          escalier = escalier - 1
          if escalier < 0
            escalier = 0
          end
          puts "Vous etes sur la case : #{escalier}" 
        when 2,3,4
           puts "\n hahaha! :P Rien ne se passe,vous restez sur la meme position case #{escalier}"
           puts "Vous etes sur la case : #{escalier}" 
    end
    if escalier == etage
        puts "\n--------||| Bravo!!! vous etes arrivE au 10eme etages |||--------\n"
        break
    else 
        puts "Relancez le dE?:o/n"
        nombre_de_partie = nombre_de_partie + 1
        partie = gets.chomp
    end

end
puts "****Fin de la partie****"

puts "Nombre de la partie = #{nombre_de_partie}"
def average_finish_time(nombre_de_partie)
    (100/nombre_de_partie)-1
end

aft = average_finish_time(nombre_de_partie)

puts "Vous devez #{aft} nombre de tours moyen pour arriver au 10ème étage."
