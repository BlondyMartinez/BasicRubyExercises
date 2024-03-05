require_relative '../caesar_cipher'

RSpec.describe '#caesar_cipher' do
  it 'shifts characters correctly with positive shift' do
    expect(caesar_cipher('abc', 1)).to eq('bcd')
  end

  it 'shifts characters correctly with negative shift' do
    expect(caesar_cipher('abc', -1)).to eq('zab')
  end

  it 'handles shifts that go beyond the alphabet' do
    expect(caesar_cipher('xyz', 3)).to eq('abc')
  end

  it 'handles mixed-case input' do
    expect(caesar_cipher('aBcD', 1)).to eq('bCdE')
  end

  it 'handles non-alphabetic characters without modification' do
    expect(caesar_cipher('123!@#', 5)).to eq('123!@#')
  end
end