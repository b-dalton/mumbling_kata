require 'mumbler'

RSpec.describe Mumbler do
    context 'when a 1 letter string is passed in' do
        it 'returns that string capitalised' do
            # Arrange
            mumbler = Mumbler.new

            # Act 
            mumbled = mumbler.word_mumbler("a")

            # Assert 
            expect(mumbled).to eq("A")
        end
    end
end