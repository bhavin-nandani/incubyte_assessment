require_relative 'string_calculator'

RSpec.describe StringCalculator do
    let(:calculator) { StringCalculator.new }

    describe '#add' do
        context 'when empty string' do
            it 'returns 0' do
                expect(calculator.add('')).to eq(0)
            end
        end

        context 'when single number' do
            it 'returns that number' do
                expect(calculator.add('1')).to eq(1)
            end

            it 'returns that number' do
                expect(calculator.add('100')).to eq(100)
            end
        end

        context 'when two numbers' do
            it 'returns the sum of those numbers' do
                expect(calculator.add('1,2')).to eq(3)
            end
            
            it 'returns the sum of those numbers' do
                expect(calculator.add('100,200')).to eq(300)
            end
        end

        context 'when multiple numbers' do
            it 'returns the sum of those numbers' do
                expect(calculator.add('1,2,3')).to eq(6)
            end

            it 'returns the sum of those numbers' do
                expect(calculator.add('100,200,300')).to eq(600)
            end

            it 'returns the sum of those numbers with spaces' do
                expect(calculator.add('    100   ,   200    ,     300    ')).to eq(600)
            end
        end

        context 'when numbers separated by newlines' do
            it 'returns the sum of those numbers' do
                expect(calculator.add("1\n2")).to eq(3)
            end

            it 'returns the sum of those numbers' do
                expect(calculator.add("1\n2,3, 4\n5\n7")).to eq(22)
            end

            it 'returns the invalid' do
                expect { calculator.add("1,\n") }.to raise_error(RuntimeError, 'Invalid input')

            end
        end

        context 'when numbers separated by different delimiters' do
            xit 'returns the sum of those numbers' do

            end
        end

        context 'when numbers are negative' do
            xit 'returns the sum of those numbers' do 

            end
        end
    end
end