require 'mumbler'

RSpec.describe Mumbler do
    # Arrange
    before(:each) { @mumbler = Mumbler.new }

    context 'given an empty string' do
        it 'returns that empty string' do
            # Arrange
            # mumbler = Mumbler.new

            # Act
            mumbled_output = @mumbler.mumble_letters("")

            # Assert
            expect(mumbled_output).to eq("")
        end
    end

    context 'given a single letter string' do
        it 'returns that letter mumbled' do
            # Arrange
            # mumbler = Mumbler.new

            # Act
            mumbled_output = @mumbler.mumble_letters("a")

            # Assert
            expect(mumbled_output).to eq("A")
        end
    end

    context 'given an uppercase single letter string' do
        it 'returns that letter mumbled' do
            # Arrange
            # mumbler = Mumbler.new

            # Act
            mumbled_output = @mumbler.mumble_letters("C")

            # Assert
            expect(mumbled_output).to eq("C")
        end
    end

    context 'given another single letter string' do
        it 'returns that letter mumbled' do
            # Act
            mumbled_output = @mumbler.mumble_letters("X")

            # Assert
            expect(mumbled_output).to eq("X")
        end
    end

    context 'given a two letter string' do
        it 'returns the string mumbled' do
            # Act
            mumbled_output = @mumbler.mumble_letters("aC")

            # Assert
            expect(mumbled_output).to eq("A-Cc")
        end
    end

    context 'given another two letter string' do
        it 'returns the string mumbled' do
            # Act
            mumbled_output = @mumbler.mumble_letters("xY")

            # Assert
            expect(mumbled_output).to eq("X-Yy")
        end
    end

    context 'given another two letter string' do
        it 'returns the string mumbled' do
            # Act
            mumbled_output = @mumbler.mumble_letters("ko")

            # Assert
            expect(mumbled_output).to eq("K-Oo")
        end
    end

    context 'given a three letter string' do
        it 'returns the string mumbled' do
            # Act
            mumbled_output = @mumbler.mumble_letters("abc")

            # Assert
            expect(mumbled_output).to eq("A-Bb-Ccc")
        end
    end

    context 'given another three letter string' do
        it 'returns the string mumbled' do
            # Act
            mumbled_output = @mumbler.mumble_letters("ghi")

            # Assert
            expect(mumbled_output).to eq("G-Hh-Iii")
        end
    end

    context 'given another three letter string' do
        it 'returns the string mumbled' do
            # Act 
            mumbled_output = @mumbler.mumble_letters("ben")

            # Assert
            expect(mumbled_output).to eq("B-Ee-Nnn")
        end
    end

    context 'given a string longer than three letters' do
        it 'returns the string mumbled' do
            # Act
            mumbled_output = @mumbler.mumble_letters("abcd")

            # Assert
            expect(mumbled_output).to eq("A-Bb-Ccc-Dddd")
        end
    end

    context 'given another string longer than three letters' do
        it 'returns the string mumbled' do
            # Act
            mumbled_output = @mumbler.mumble_letters("qwerty")

            # Assert
            expect(mumbled_output).to eq("Q-Ww-Eee-Rrrr-Ttttt-Yyyyyy")
        end
    end

    context 'given another string longer than three letters' do
        it 'returns the string mumbled' do
            # Act
            mumbled_output = @mumbler.mumble_letters("testing")

            # Assert
            expect(mumbled_output).to eq("t-Ee-Sss-Tttt-Iiiii-Nnnnnn-Ggggggg")
        end
    end
end