require_relative '../../lib/6kyu/backspaces_in_string'

RSpec.describe '#clean_string' do
  it "returns '' if input is empty" do
    expect(clean_string('')).to eq('')
  end

  it "returns string without '#' and preceding characters" do
    expect(clean_string('abjd####jfk#')).to eq('jf')
    expect(clean_string('####gfdsgf##hhs#dg####fjhsd###dbs########afns#######sdanfl##db#####s#a')).to eq('sa')
    expect(clean_string('############')).to eq('')
  end
end
