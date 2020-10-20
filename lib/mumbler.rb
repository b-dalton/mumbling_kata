class Mumbler
    def mumble_letters(string)
        return string.chars.each_with_index.map { |char, index| char.upcase + char.downcase * index }.join("-")
    end
end