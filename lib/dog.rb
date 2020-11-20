# Add your code here

class Dog
    attr_accessor :name
    
   @@all = []

    def initialize(name)
        @name = name
        save
        # @@all << self We extracted this and created it's own method
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        # @@all.map(&:name) is an optional method according to notes
        puts @@all.map { |dog| dog.name}
    end

    def save
        @@all << self
    end
end