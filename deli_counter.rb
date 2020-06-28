
  katz_deli = []
  other_deli = ["Logan", "Avi", "Spencer"]
  another_deli = ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer", "Avi", "Joe", "Rachel", "Lindsey"]
  
  def line(katz_deli)
    katz_deli
    if katz_deli.count == 0 
      puts "The line is currently empty."
    else
      puts "The line is currently: "
      katz_deli.each_with_index do |x, i|
        i = i += 1
        puts "#{i}. #{x} "
      end
    end
  end
  line(katz_deli)
  
  def line(other_deli)
      puts "The line is currently: 1. #{other_deli[0]} 2. #{other_deli[1]} 3. #{other_deli[2]}"
  end
  line(other_deli)
  
  def line(another_deli)
    puts "The line is currently: 1. #{another_deli[0]} 2. #{another_deli[1]} 3. #{another_deli[2]} 4. #{another_deli[3]} 5. #{another_deli[4]} 6. #{another_deli[5]} 7. #{another_deli[6]} 8. #{another_deli[7]} 9. #{another_deli[8]} 10. #{another_deli[9]}"
  end
	line(another_deli)
        
  def take_a_number(katz_deli, name)
    katz_deli.push(name)
    count = katz_deli.count
    puts "Welcome, #{name}. You are number #{count} in line."
  end
  take_a_number(katz_deli, "Ada")
  take_a_number(katz_deli, "Grace")
  take_a_number(katz_deli, "Kent")

  def take_a_number(other_deli, name)
    other_deli.push(name)
    count = other_deli.count
    puts "Welcome, #{name}. You are number #{count} in line."
  end
  take_a_number(other_deli, "Grace")

  def line(katz_deli)
      puts "The line is currently: 1. #{katz_deli[0]} 2. #{katz_deli[1]} 3. #{katz_deli[2]}"
  end
  line(katz_deli)
  
  def now_serving(katz_deli)
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
  now_serving(katz_deli)
  
  def line(katz_deli)
      puts "The line is currently: 1. #{katz_deli[0]} 2. #{katz_deli[1]}"
  end
  line(katz_deli)

  def take_a_number(katz_deli, name)
    katz_deli.push(name)
    count = katz_deli.count
    puts "Welcome, #{name}. You are number #{count} in line."
  end
   take_a_number(katz_deli, "Matz")
   
  def now_serving(katz_deli)
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
  now_serving(katz_deli)
  
  def line(katz_deli)
      puts "The line is currently: 1. #{katz_deli[0]} 2. #{katz_deli[1]}"
  end
  line(katz_deli)