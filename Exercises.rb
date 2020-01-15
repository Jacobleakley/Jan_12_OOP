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

# class Player
#     def initialize
#     @gold_coins = 2
#     @health_points = 10
#     @lives = 5
#     end 

#     def level_up
#         @lives += 1
#     end 

#     def collect_treasure
#         if @gold_coins % 10 == 0
#             level_up
#         else 
#             @gold_coins += 1
#         end
#     end 

#     def do_battle(damage)
#         @health_points -= damage
#         if @lives >= 2 && @health_points < 1
#             @lives -= 1
#             @health_points = 10
#         else restart 
#         end
#     end
        
#     def restart
#         @gold_coins = 0
#         @lives = 5
#         @health_points = 10
#     end 
# end 

# star = Player.new

# puts "*****new*****"
# puts p star 


# star.level_up
# puts "*******level up*******"
# puts p star


# star.collect_treasure
# puts "******collect treasure*******"
# puts p star


# star.do_battle(5)
# puts "******do battle*******"
# puts p star

# star.restart 
# puts "******restart*******"
# puts p star



  
### EXERCISE 4


class Paperboy
    def initialize(name)
        @name = name
        @experience = 0
        @earnings = 0
    end 
    attr_reader :earnings

def quota
    50 + (@experience * 0.5)
end 

def deliver(start_address, end_address)

    deliver = (end_address - start_address)
    @experience += deliver

       if deliver < quota 
        todays_earning = (deliver * 0.25) - 2
        
       elsif deliver > quota 
        todays_earning = (quota * 0.25).to_f + ((deliver - quota) * 0.50).to_f
        
       elsif deliver = quota 
        todays_earning = deliver * 0.25
       end      

       @earnings += todays_earning

       return todays_earning
    end 

def report 
    print "I'm #{@name}. I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
end 


##############################################
tommy = Paperboy.new("Tommy")

p tommy.quota # => 50
p tommy.deliver(101, 160) # => 17.5
p tommy.earnings

print tommy.report





