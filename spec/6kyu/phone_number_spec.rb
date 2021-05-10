require_relative '../../lib/6kyu/phone_number'

RSpec.describe '#create_phone_number' do
  let(:number_one) { [1, 2, 3, 4, 5, 6, 7, 8, 9, 0] }
  let(:number_two) { [1, 1, 1, 1, 1, 1, 1, 1, 1, 1] }
  let(:number_three) { [1, 3, 5, 1, 1, 6, 7, 8, 9, 0] }

  let(:sol_one) { '(123) 456-7890' }
  let(:sol_two) { '(111) 111-1111' }
  let(:sol_three) { '(135) 116-7890' }

  it 'returns a valid phone number string' do
    expect(create_phone_number(number_one)).to eq(sol_one)
    expect(create_phone_number(number_two)).to eq(sol_two)
    expect(create_phone_number(number_three)).to eq(sol_three)
  end
end
