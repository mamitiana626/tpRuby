def half_pyramid(n)
    height=n
    width=height * 2 - 1
    for i in 0...height
        for j in 0..width+1
            if j >= height - i and j <= height + i
                print "#"
            end
        end
        puts
    end
end
  
def full_pyramid(n)
    height=n
    width=height * 2 - 1
    for i in 0...height
        for j in 0..width+1
            if j >= height - i and j <= height + i
                  print "#"
            else
                  print " "
            end
        end
        puts
     end
end
  
def wtf_pyramid(n)
    height=n.to_i/2  
    width=height * 2 - 1
    for i in 0...height+1
        for j in 0..width+1
            if j >= height - i and j <= height + i
                print "#"
            else
                print " "
            end
        end
        puts
    end
    for i in (height-1).downto(0)
        for j in (width+1).downto(0)
            if j >= height - i && j <= height + i
                print "#"
            else
                print " "
            end
        end
        puts
    end
end

puts "\tPYRAMIDE DE RAMSES II "
puts "\n-------||| MENUS |||-------"
puts "Saisir: 1 -> Tester"
puts "Saisir: 4 -> Quitter le programme"

puts "\nVeuillez choisir votre choix :"
n = gets.chomp
n = n.to_i
if n==4
    puts "\nMerci de tester notre programme"
end 
while n!=4
    puts "\n\tPYRAMIDE DE RAMSES II "
    puts "\n-------||| MENUS |||-------"
    puts "Saisir: 1 -> Moitié de pyramide"
    puts "Saisir: 2 -> Pyramide de Gizeh"
    puts "Saisir: 3 -> Alexandre Alexandre"
    puts "Saisir: 4 -> Quitter le programme"
    puts "\nVeuillez choisir votre choix :"
    n = gets.chomp
    n = n.to_i

    case n
        when 1
            puts "Nombre etage du pyramide : "
            n = gets.chomp
            res = n.to_i
        puts "\n 2.2.1 Moitié de pyramide : "
        half_pyramid(res)
        when 2
            puts "nbr pyramide"
            n = gets.chomp
            res = n.to_i
        puts "\n 2.2.2 Pyramide de Gizeh"
        full_pyramid(res)
        when 3
            puts "nbr pyramide nombre(impaire)"
            n = gets.chomp
            res = n.to_f
            if res%2 == 1
                puts "\n 2.2.3. Alexandrie, Alexandra"
                wtf_pyramid(res)  
            else  
                puts "Vous avez entrer un nombre paire (#{n}) veuillez reEssayer:"
                puts "Veuillez reEssayer et saisir un nombre IMPAIRE"
            end 
        when 4
            puts "\nMerci de tester notre programme"
            break 
    end
end