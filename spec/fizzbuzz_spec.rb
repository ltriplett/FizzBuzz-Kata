require './fizzbuzz.rb'

describe FizzBuzz do

  it 'returns a number as a string' do
    expect(subject.generate(1)).to eq ['1']
  end

  it "returns 'Fizz' if the number is divisible by 3" do
    expect(subject.generate(3)).to eq ['Fizz']
    expect(subject.generate(24)).to eq ['Fizz']
  end

  it "returns 'Buzz' if the number is divisible by 5" do
    expect(subject.generate(5)).to eq ['Buzz']
    expect(subject.generate(10)).to eq ['Buzz']
  end

  it "returns 'FizzBuzz' if the number is divisible by both 5 and 3" do
    expect(subject.generate(15)).to eq ['FizzBuzz']
  end

  it 'returns the correct value for multiple entries' do
    expect(subject.generate(1,2,3,4,5,6,10,15,33,45,100)).to eq %w[1 2 Fizz 4 Buzz Fizz Buzz FizzBuzz Fizz FizzBuzz Buzz]
  end

  context 'provide an error message on invalid entries' do

    it 'negative number' do
      expect(subject.generate(-3)).to eq 'Invalid entry'
    end

    it 'number less than 1' do
      expect(subject.generate(0)).to eq 'Invalid entry'
    end

    it 'number greater than 100' do
      expect(subject.generate(105)).to eq 'Invalid entry'
    end

    it 'word characters' do
      expect(subject.generate('wow')).to eq 'Invalid entry'
    end

    it 'string of numbers' do
      expect(subject.generate('33')).to eq 'Invalid entry'
    end

    it 'special characters' do
      expect(subject.generate('!.?')).to eq 'Invalid entry'
    end

    it 'can detect invalid entries within a collection' do
      expect(subject.generate(-5,3,10,15,16,110)).to eq 'Invalid entry'
    end
  end
end
