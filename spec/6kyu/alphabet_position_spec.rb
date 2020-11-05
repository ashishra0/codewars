require_relative '../../lib/6kyu/alphabet_position.rb'

RSpec.describe "#alphabet_position" do

  let(:string1) { "Q)/MW)hZRQ+iu=,{\\^f2up=Q%aWL*swdm,R-u7B(}mXe?)a{Ld/h-cHYW@R=(&@DY7av#82.1-]pF0w4J_'nS~En`/^hFd#9\\O>[*" }
  let(:string2) { "lz!Ut[/E|@nVm/ @%?S}zJlczJ!j-c+s(gsN:42\" DNMOC1aRz$LWy.,MyYm\\5n#yQV}o`=l7!s!C=MqLtEauSzEQu9s^24PnOF&D" }
  let(:string3) { "" }

  let(:result1) { "17 13 23 8 26 18 17 9 21 6 21 16 17 1 23 12 19 23 4 13 18 21 2 13 24 5 1 12 4 8 3 8 25 23 18 4 25 1 22 16 6 23 10 14 19 5 14 8 6 4 15" }
  let(:result2) { "12 26 21 20 5 14 22 13 19 26 10 12 3 26 10 10 3 19 7 19 14 4 14 13 15 3 1 18 26 12 23 25 13 25 25 13 14 25 17 22 15 12 19 3 13 17 12 20 5 1 21 19 26 5 17 21 19 16 14 15 6 4" }

  it "replace every letter with its position in the alphabet" do
    expect(alphabet_position(string1)).to eq(result1)
    expect(alphabet_position(string2)).to eq(result2)
    expect(alphabet_position(string3)).to eq("")
  end
end