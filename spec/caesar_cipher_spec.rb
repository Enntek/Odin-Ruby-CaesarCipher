# spec/caesar_cipher_spec.rb
require './lib/caesar_cipher.rb'

describe 'caesar_cipher' do
  it 'returns same string if shift is 0' do
    expect(caesar_cipher('hello world', 0).to eql 'hello world'
  end

  it 'returns a string with a shift of 1' do
    expect(caesar_cipher('a', 1)).to eql 'b'
  end
end

# describe '#add' do
#   it 'returns the sum of two numbers' do
#     calculator = Calculator.new
#     expect(calculator.add(5, 2)).to eql(7)
#   end
# end