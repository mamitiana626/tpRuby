etage = 10
escalier = 0
partie = 'o'
nombre_de_partie = 0

puts "//Lancement de la partie//"
while partie == 'o'
    puts "=============================================================="
    #lancement du dE
    puts "Le dE se lance..."
    d_random = rand(1..6)
    #affichage resultat du dE
    puts "Le dE fait #{d_random} :)"
    case d_random
        when 5 ,6
          #si le dE fait 5 et 6 on avance d'une marche
          puts "\n (^_^) Bravo!!! Vous avez avancer une marche"
          escalier = escalier + 1
          if escalier < 0
            escalier = 0
          end
          puts "Vous etes sur la case : #{escalier}"
        when 1
          #si le dE fait 1 descend une marche
          puts "\n (>_<) oh! Courage, ce n'est pas la fin du monde,  (^_^) Vous descend une marche"
          escalier = escalier - 1
          if escalier < 0
            escalier = 0
          end
          puts "Vous etes sur la case : #{escalier}" 
        when 2,3,4
          #si le dE fait 2,3 et 4 rien ne se passe et on reste sur la meme position
           puts "\n hahaha! :P Rien ne se passe,vous restez sur la meme position case #{escalier}"
           puts "Vous etes sur la case : #{escalier}" 
    end
    #si on atteint la 10eme etage, affichage msg "bravo"
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
#affichage statistique du jeu
puts "Nombre de la partie = #{nombre_de_partie}"
def average_finish_time(nombre_de_partie)
    (100/nombre_de_partie)-1
end

aft = average_finish_time(nombre_de_partie)

puts "Vous devez #{aft} nombre de tours moyen pour arriver au 10ème étage."
