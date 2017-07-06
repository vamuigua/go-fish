require('rspec')
require('game')
require('player')

#spec to return attribute
    describe("#player") do
        it("returns player name")do
            new_player = Game.new({:player=>"Najib",:cards=>52})
            expect(new_player.player()).to(eq("Najib"))
        end
    end

#spec to make a new vehicle instance
    describe("#cards") do
      it("returns the 52 deck of cards") do
        new_player = Game.new({:player=>"Najib",:cards=>52})
        expect(new_player.cards()).to(eq(52))
      end
    end


#spec to check players in the array list  
    describe(".all") do
      it("is empty at first") do
        expect(Game.all()).to(eq([]))
      end
    end

#spec to save new vehicle instances
   describe("#save") do
      it("adds a player to the game") do
        new_player = Game.new({:player=>"Najib",:cards=>52})
        new_player.save()
        expect(Game.all()).to(eq([new_player]))
      end
    end

#spec to clear the players array list
   describe(".clear") do
      it("empties out all of the saved players") do
        Game.new({:player=>"Najib",:cards=>52}).save()
        Game.clear()
        expect(Game.all()).to(eq([]))
      end
    end

