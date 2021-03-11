require 'pry'
class Person
    attr_reader :name 
    attr_accessor :happiness, :hygiene, :bank_account
    def initialize (name, bank_account=25, happiness = 8, hygiene =8)
        @name = name 
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def clean?
        if self.hygiene > 7
            true
        else 
            false
        end
    end

    def happy?
        @happy_point = happiness
        if @happy_point > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness += 2
        @hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend_name)
        @friend = friend_name
        @happiness += 3
        @friend.happiness += 3
        "Hi #{@friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person ,topic)
        if topic == "politics"
            person.happiness -= 2
            @happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

    
end

soroosh = Person.new("soroosh")

# binding.pry
