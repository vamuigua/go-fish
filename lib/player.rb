class Player
    #attribute-reader
    attr_reader(:name, :cards, :match)
    
    #array to store players
    @@players = [] 
    
    #initialize method
    define_method(:initialize) do |attributes|
        @name = attributes.fetch(:name)
        @cards = attributes.fetch(:cards)
        @match = attributes.fetch(:match)
    end
    
    #method for checking all players
    define_singleton_method(:all) do
      @@players
    end
    
    #method for saving new players
    define_method(:save) do
      @@players.push(self)
    end
    
    #method for clearing the players array list
    define_singleton_method(:clear) do
      @@players = []
    end
end

