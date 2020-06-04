require 'pry'

class Person
    attr_reader :name
    #attr_writer :
    attr_accessor :happiness, :hygiene, :bank_account

    def initialize(name)
        @name = name
        @happiness = 8 
        @hygiene = 8
        @bank_account = 25
    end

    def happiness
        if @happiness > 10 
            @happiness = 10
        end
        if @happiness < 0 
            @happiness = 0
        end
        @happiness
    end

    def hygiene
        if @hygiene > 10 
            @hygiene = 10
        end
        if @hygiene < 0 
            @hygiene = 0
        end
        @hygiene
    end

    def happy?
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene-=3
        self.happiness+=2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness-=2
            friend.happiness-=2
            return "blah blah partisan blah lobbyist"
        end
        if topic == "weather"
            self.happiness+=1
            friend.happiness+=1
            return "blah blah sun blah rain"
        end
        if topic != "politics" && topic != "weather"
            return "blah blah blah blah blah"
        end
    end

end
