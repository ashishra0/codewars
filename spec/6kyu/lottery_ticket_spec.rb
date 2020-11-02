require_relative '../../lib/6kyu/lottery_ticket.rb'

RSpec.describe "bingo" do
  context "winning scenario" do
    it "decides lottery winner" do
      arr = [['ABC', 65], ['HGR', 74], ['BYHT', 74]]
      win = 1
      expect(bingo(arr, win)).to eq('Winner!')
    end
  end

  context "losing scenario" do
    it "decides lottery loser" do
      arr = [['ABC', 65], ['HGR', 74], ['BYHT', 74]]
      win = 2
      expect(bingo(arr, win)).to eq('Loser!')
    end
  end
end

