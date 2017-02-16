require "spec_helper"

RSpec.describe Player do
  # Player specs go here.
  let(:player) { player = Player.new("Jackie Robinson","2nd base") }
  describe ".new" do
    it "takes a name and position as arguments" do
      expect(player).to be_a(Player)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(player.name).to eq("Jackie Robinson")
    end
    it "has a writer for name" do
      expect( player.name = "John Smith").to eq("John Smith")
    end
  end

  describe "#position" do
    it "has a reader for position" do
      expect(player.position).to eq("2nd base")
    end

    it "has a writer for position" do
      expect( player.position = "3rd base").to eq("3rd base")
    end
  end



end
