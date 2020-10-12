class Mumbler
    def word_mumbler(string)
        return string.upcase if string.length <= 1
        return string[0].upcase + "-" + string[1].upcase + string[1].downcase
    end
end