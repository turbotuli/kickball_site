require "spec_helper"

RSpec.describe Player do
  # Player specs go here.
  describe ".new" do
    it "takes a name and position as arguments" do
      player = Player.new("Jackie Robinson","2nd base")
      expect(player).to be_a(Player)
    end
  end

end
