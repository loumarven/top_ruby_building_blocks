def caesar_cipher(string, shift)
  result = ''

  string.split('').each do |s|
    if s.match(/[A-Za-z]/)
      new = s.ord + shift 

      if new > 'Z'.ord && new < 'a'.ord
        new = 'A'.ord + (shift - ('Z'.ord - s.ord)) - 1
      elsif new > 'z'.ord
        new = 'a'.ord + (shift - ('z'.ord - s.ord)) - 1
      end
    else
      new = s.ord
    end

    result += new.chr
  end

  result
end

puts caesar_cipher("What a string!", 5)
