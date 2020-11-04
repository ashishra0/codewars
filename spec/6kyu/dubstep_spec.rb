require_relative '../../lib/6kyu/dubstep.rb'

RSpec.describe '#song_decoder' do

  let(:song) { "WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB" }
  let(:result) { "WE ARE THE CHAMPIONS MY FRIEND" }

  let(:song1) { "AWUBWUBWUBBWUBWUBWUBC" }
  let(:result1) { "A B C"}

  let(:song2) { "AWUBWUBAWUBWUBA" }
  let(:result2) { "A A A"}

  it "removes all occurrences of 'WUB'" do
    expect(song_decoder(song)).to eq(result)
    expect(song_decoder(song1)).to eq(result1)
    expect(song_decoder(song2)).to eq(result2)
  end
end