### EXERCISE 1

# class BankAccount
#     @balance = 0
#     @interest_rate = 0.03

#     def deposit(amt)
#         @balance += amt
#     end 

#     def withdraw(amt)
#         @balance -= amt 
#     end 

#     def gain_interest
#         @balance * @interest_rate
#     end 


# end 

# checking = BankAccount.new

# EXERCISE 2

# class Cat
#     def initialize(name, preferred_food, meal_time)
#     @name = name
#     @preferred_food = preferred_food
#     @meal_time = meal_time
#     end 

#     def eats_at
#         a = "AM"
#         if @meal_time > 12 && meal_time < 23
#             a = "PM"
#         end 
#         return "#{@meal_time} #{a}"
#     end

#     def meow
#         puts "MEOW"
#     end 
# end 

# tabby = Cat.new("Tabby","fish",12)
# siamise = Cat.new('Siamise', 'purina', 9)

# puts siamise.eats_at
# puts siamise.meow


#EXERCISE 3

class Player
    def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    end 

    def level_up
        @lives += 1
    end 

    def collect_treasure
        if @gold_coins % 10 == 0
            level_up
        else @gold_coins += 1
    end 

        def do_battle(damage)
            @health_points -= 1
            if @health_points < 1
                @lives -= 1
                if @lives < 1
                    restart 
                end
            end
        end
            
        def restart
            @gold_coins = 0
            @lives = 5
            @health_points = 10
        end 
end 

star = Player.new

puts p star 

puts "*****new***"

star.level_up
puts p star

puts "*******level up"

star.collect_treasure
puts p star
puts "******collect treasure"

star.do_battle(1)
puts p star

puts "******do battle"

star.restart 
puts p star
end 


  
### EXERCISE 4





