# spec/caesar_cipher_spec.rb
# frozen_string_literal: true

require './lib/caesar_cipher.rb'

# 'context' is superfluous here, for practice only
describe CaesarCipher do
  subject { CaesarCipher.new }

  describe '#caesar_cipher' do
    context 'we instantiate CaesarCipher and send caesar_cipher message' do
      it 'returns same char if shift is 0' do
        expect(subject.caesar_cipher('a', 0)).to eql 'a'
      end

      it "returns 'b' if given 'a' and shift of 1" do
        expect(subject.caesar_cipher('a', 1)).to eql 'b'
      end

      it "returns 'bb' if given 'aa' and shift of 1" do
        expect(subject.caesar_cipher('aa', 1)).to eql 'bb'
      end

      it "returns 'aa' if given 'zz' with shift of 1" do
        expect(subject.caesar_cipher('zz', 1)).to eql 'aa'
      end

      it "returns 'a a!' if given 'z z!' with shift of 1" do
        expect(subject.caesar_cipher('z z!', 1)). to eql 'a a!'
      end

      it "returns 'a A!' if given 'z Z! with shift of 1" do
        expect(subject.caesar_cipher('z Z!', 1)).to eql 'a A!'
      end

      it "returns 'Bmfy f xywnsl!' given 'What a string! with shift of 5" do
        expect(subject.caesar_cipher('What a string!', 5)).to eql 'Bmfy f xywnsl!'
      end
    end
  end
end
