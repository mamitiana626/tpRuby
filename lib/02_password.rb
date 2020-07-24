def signup
	puts "\nVeillez cree votre mot de passe"
    mdp=gets.chomp
    login(mdp)
end

def login(mdp)
    puts "\nVeillez entrer votre mot de passe"	
    mdp2=gets.chomp  
    if mdp2==mdp
        welcome_screen()
    end
    while mdp2!=mdp
        puts "\nErreur!!! verifier votre mot de passe"	
        mdp2=gets.chomp  
        if mdp2==mdp
            welcome_screen()
        end
    end	
end

def welcome_screen
    puts "\n\nBIENVENUE oh chers utilisateur\nComme vous ete arriver jusqu'ici je vais vous devoiler un petit secret\nje vais vais vous dire la secret de l immortaliter\nLe Yomi Yomi no Mi, ou Fruit de la Résurrection,\nc est un Fruit du Démon de type Paramecia qui permet à son utilisateur de revenir à la vie après sa mort, faisant de lui un Homme Ressuscité"
end

puts "***jeu de mot de passe***" 
signup()