require_relative '../../lib/5kyu/pig_it'

RSpec.describe '#pig_it' do
  let(:input_one) { 'Pig latin is cool' }
  let(:input_two) { 'Hello world !' }
  let(:input_three) { 'Cucullus non facit monachum' }

  it "should move first letter to the end and append 'ay'" do
    expect(pig_it(input_one)).to eq('igPay atinlay siay oolcay')
    expect(pig_it(input_two)).to eq('elloHay orldway !')
    expect(pig_it(input_three)).to eq('ucullusCay onnay acitfay onachummay')
  end
end