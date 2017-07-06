class Game
    #attribute-reader
    attr_reader(:player, :cards)
    
    #array to store players
    @@players = [] 
    
    #initialize method
    define_method(:initialize) do |attributes|
        @player = attributes.fetch(:player)
        @cards = 52
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

