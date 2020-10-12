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
end