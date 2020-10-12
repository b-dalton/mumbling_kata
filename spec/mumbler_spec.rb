require 'mumbler'

RSpec.describe Mumbler do
    context 'given an empty string' do
        it 'returns that empty string' do
            # Arrange
            mumbler = Mumbler.new

            # Act 
            mumbled = mumbler.word_mumbler("")

            # Assert 
            expect(mumbled).to eq("")
        end
    end

    context 'given a single character' do
        it 'returns that character capitalised' do
            # Arrange
            mumbler = Mumbler.new

            # Act 
            first_mumbled = mumbler.word_mumbler("a")
            second_mumbled = mumbler.word_mumbler("b")

            # Assert 
            expect(first_mumbled).to eq("A")
            expect(second_mumbled).to eq("B")
        end
    end

    context 'given a two character string' do
        it 'returns that string mumbled' do
            # Arrange
            mumbler = Mumbler.new

            # Act 
            first_mumbled = mumbler.word_mumbler("ab")
            second_mumbled = mumbler.word_mumbler("bd")
            third_mumbled = mumbler.word_mumbler("ce")

            # Assert 
            expect(first_mumbled).to eq("A-Bb")
            expect(second_mumbled).to eq("B-Dd")
            expect(third_mumbled).to eq("C-Ee")
        end
    end

    context 'given a three character string' do
        it 'returns that string mumbled' do
            # Arrange
            mumbler = Mumbler.new

            # Act 
            first_mumbled = mumbler.word_mumbler("abc")

            # Assert 
            expect(first_mumbled).to eq("A-Bb-Ccc")
        end
    end
end