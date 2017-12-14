require_relative 'spec_helper'

RSpec.describe Kakunin do
  describe '#value' do
    [
      { min: 1, max: 99 },
      { min: 0, max: 1 }
    ].each do |example|
      it 'generates numbers in a range' do
        math = Kakunin::Math.new(min: example[:min], max: example[:max])

        100.times do
          value = math.value
          expect(value).to be >= example[:min]
          expect(value).to be <= example[:max]
        end
      end
    end
  end

  describe '#ask' do
    context 'correct answer is provided' do
      it 'accepts an answer and checks its correctness' do
        input = StringIO.new("4\n")
        output = StringIO.new

        math = Kakunin::Math.new(
          min: 2,
          max: 2,
          input: input,
          output: output
        )

        expect { math.ask }.not_to raise_error

        expect(output.string).to eq('2 + 2 = ')
      end
    end

    context 'wrong answer is provided' do
      it 'raises an error' do
        input = StringIO.new("1\n")
        output = StringIO.new

        math = Kakunin::Math.new(
          min: 2,
          max: 2,
          input: input,
          output: output
        )

        expect { math.ask }.to raise_error(StandardError)
      end
    end

    context 'invalid input is provided' do
      ['', 'foo'].each do |example|
        it 'raises an error' do
          input = StringIO.new("#{example}\n")
          output = StringIO.new

          math = Kakunin::Math.new(input: input, output: output)

          expect { math.ask }.to raise_error(ArgumentError)
        end
      end
    end
  end
end
