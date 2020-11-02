require_relative '../../lib/7kyu/population.rb'

RSpec.describe 'nb_year' do
  it 'returns the no of years to reach >= 1200 population' do
    years = 15
    expect(nb_year(1500, 5, 100, 5000)).to eq years
  end

  it 'should return 0 if population >= predicted population' do
    years = 0
    expect(nb_year(1500, 5, 100, 1500)).to eq years
  end
end