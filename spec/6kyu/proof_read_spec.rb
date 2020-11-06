require_relative '../../lib/6kyu/proof_read'

RSpec.describe '#proof_read' do
  let(:str) { '' }
  let(:res) { '' }
  let(:str1) { 'SHe wEnt CaNoIenG.' }
  let(:res1) { 'She went canoeing.' }
  let(:str2) { 'He haD iEght ShOTs of CAffIEne' }
  let(:res2) { 'He had eight shots of caffeine' }
  let(:str3) { "THe neIghBour's ceiLing FEll on His Head. The WiEght of It crusHed him To thE gROuNd." }
  let(:res3) { "The neighbour's ceiling fell on his head. The weight of it crushed him to the ground." }

  it "should swap 'ie' with 'ei' and capitalise the first letter" do
    expect(proof_read(str1)).to eq(res1)
    expect(proof_read(str2)).to eq(res2)
    expect(proof_read(str3)).to eq(res3)
  end

  it 'should return empty input' do
    expect(proof_read(str)).to eq('')
  end
end
