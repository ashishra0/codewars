require_relative '../../lib/6kyu/simple_encryption_1'

RSpec.describe "Simple Encryption #1 - Alternating Split" do
  describe "#encrypt" do
    context 'with valid input' do
      it 'correctly encrypts the string' do
        expect(encrypt("HELLO", 3)).to eq("LHLEO")
        expect(encrypt("AccretO", 1)).to eq("crtAceO")
        expect(encrypt("ThankYouCelest", 2)).to eq("nueTkCshYetaol")
      end
  
      it 'returns the original string if n is 0' do
        expect(encrypt("Hello", 0)).to eq("Hello")
      end
  
      it 'returns the original string if n is negative' do
        expect(encrypt("Hello", -2)).to eq("Hello")
      end
    end
  
    context 'with invalid input' do
      it 'returns an empty string if the input string is empty' do
        expect(encrypt("", 5)).to eq("")
      end
    end
  end

  describe "#decrypt" do
    context 'with valid input' do
      it 'correctly decrypts the string after encryption' do
        expect(decrypt("HLOEL", 3)).to eq("LEHOL")
        expect(decrypt("crtAceO", 1)).to eq("AccretO")
        expect(decrypt("Tsnckehlaoote", 2)).to eq("ohcTolkstaene")
      end
  
      it 'returns the original string if n is 0' do
        expect(decrypt("Hello", 0)).to eq("Hello")
      end
  
      it 'returns the original string if n is negative' do
        expect(decrypt("Hello", -2)).to eq("Hello")
      end
    end
  
    context 'with invalid input' do
      it 'returns an empty string if the input string is empty' do
        expect(decrypt("", 5)).to eq("")
      end
    end
  end
end
