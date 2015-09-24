book = []

loop do
    person = {}
    puts "What's your name?"
    person[:name] = gets.chomp
    puts "What's your phone number?"
    person[:phone_number] = gets.chomp
    puts "What's your gender? (male/female)"
    person[:gender] = gets.chomp
    
    if(person[:gender] != "male" and person[:gender] != "female")
        puts "Your gender has set to male"
        person[:gender] = "male"
    end
    
    book << person
    
    puts book
    
    loop do
        terminated = FALSE
        
        puts "\n exit or delete? (enter anything to keep saving)"
        end_condition = gets.chomp
        if (end_condition == "exit")
            terminated = TRUE
            break
    
        elsif (end_condition == "delete")
            
                puts "input the name of entry you want to delete"
                delete_name = gets.chomp
                happened = TRUE
                book.count.times do |i|
                    if(delete_name == book[i-1][:name])
                        book.delete_at(i-1)
                        puts "The item has deleted"
                        puts book
                        happened = FALSE
                    end
                end
            
                if(happened)
                    puts "There is no such name"
                end
            
        else
            terminated=TRUE
        end
    
        if(terminated)
            
            break
        end
    
    end
    
    
end

