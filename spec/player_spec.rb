require('rspec')
require('game')
require('player')

#spec to return attribute
    describe("#name") do
        it("returns player name")do
            new_player = Player.new({:name=>"Najib",:cards=>[12,36,45,30],:match=>2})
            expect(new_player.name()).to(eq("Najib"))
        end
    end

#spec to make a new vehicle instance
    describe("#cards") do
      it("returns the number of cards given to the player") do
        new_player = Player.new({:name=>"Najib",:cards=>[12,36,45,30],:match=>2})
        expect(new_player.cards()).to(eq([12,36,45,30]))
      end
    end


#spec to check players in the array list  
    describe(".all") do
      it("is empty at first") do
        expect(Player.all()).to(eq([]))
      end
    end

#spec to save new vehicle instances
   describe("#save") do
      it("adds a player to the Player") do
        new_player = Player.new({:name=>"Najib",:cards=>[12,36,45,30],:match=>2})
        new_player.save()
        expect(Player.all()).to(eq([new_player]))
      end
    end

#spec to clear the players array list
   describe(".clear") do
      it("empties out all of the saved players") do
        Player.new({:name=>"Najib",:cards=>[12,36,45,30],:match=>2}).save()
        Player.clear()
        expect(Player.all()).to(eq([]))
      end
    end

