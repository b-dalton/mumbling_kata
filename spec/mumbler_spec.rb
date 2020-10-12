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
            mumbled = mumbler.word_mumbler("a")

            # Assert 
            expect(mumbled).to eq("A")
        end
    end

    context 'given another single character' do
        it 'returns that character capitalised' do
            # Arrange
            mumbler = Mumbler.new

            # Act 
            mumbled = mumbler.word_mumbler("b")

            # Assert 
            expect(mumbled).to eq("B")
        end
    end

    context 'given a two character string' do
        it 'returns that string mumbled' do
            # Arrange
            mumbler = Mumbler.new

            # Act 
            mumbled = mumbler.word_mumbler("ab")

            # Assert 
            expect(mumbled).to eq("A-Bb")
        end
    end

    context 'given another two character string' do
        it 'returns that string mumbled' do
            # Arrange
            mumbler = Mumbler.new

            # Act 
            mumbled = mumbler.word_mumbler("bd")

            # Assert 
            expect(mumbled).to eq("B-Dd")
        end
    end
end