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
      for i in (height-1).downto(0)
        for j in (width+1).downto(0)
            if j >= height - i and j <= height +i
                print "#"
            else
                print " "
            end
        end
        puts
    end
  end
  puts "Exo 2) Vacances en Égypte"
  puts "nbr pyramide"
  n = gets
  res = n.to_i
  puts "\n 2.2.1 Moitié de pyramide"
  half_pyramid(res)
  puts "\n 2.2.2 Pyramide de Gizeh"
  full_pyramid(res)
  puts "\n 2.2.3. Alexandrie, Alexandra"
  wtf_pyramid(res)