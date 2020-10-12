class Mumbler
    def word_mumbler(string)
        return string.upcase if string.length <= 1
        return string[0].upcase + "-" + string[1].upcase + string[1].downcase if string.length == 2
        return string[0].upcase + "-" + string[1].upcase + string[1].downcase + "-" + string[2].upcase + string[2].downcase + string[2].downcase if string.length == 3
    end
end