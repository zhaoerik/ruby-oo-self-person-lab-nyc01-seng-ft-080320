require 'pry'
class Person
    attr_reader :name 
    attr_accessor :happiness_points, :hygiene_points, :bank_accounts
    def initialize (name, bank_accounts=25, happiness_points = 8, hygiene_points =8)
        @name = name 
        @bank_accounts = bank_accounts
        @happiness_points = happiness_points
        @hygiene_points = hygiene_points
    end

    def clean?
        @point = hygiene_points
        if @point > 7
            "true"
        else 
            "false"
        end
    end

    def happy?
        @happy_point = happiness_points
        if @happy_point > 7
            "true"
        else
            "false"
        end
    end

    def get_paid(salary)
        @bank_accounts += salary
        "all about the benjamins"
    end

    def take_bath
        @hygiene_points += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness_points += 2
        @hygiene_points -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend_name)
        @friend = friend_name
        @happiness_points += 3
        "Hi #{@friend}! It's #{@name}. How are you?"
    end

    def start_conversation(person ,topic)
        if topic == "politics"
            @happiness_points -= 3
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness_points += 3
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

    
end

soroosh = Person.new("soroosh")

# binding.pry
