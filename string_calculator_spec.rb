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
            xit 'returns the sum of those numbers' do

            end
        end

        context 'when multiple numbers' do
            xit 'returns the sum of those numbers' do

            end
        end

        context 'when numbers separated by newlines' do
            xit 'returns the sum of those numbers' do

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