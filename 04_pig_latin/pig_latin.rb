def translate(text)
  words = text.split
  result = []
  vovels = %w(a i e o u y A I E O U)
  words.each do |word|
    capitalized = true if word == word.capitalize
    #word.downcase! if capitalized
    if vovels.include? word[0]
      result << word + 'ay'
    elsif word.include? 'qu'
      word += word.slice!(0..word.index(/qu/)+1)
      word.capitalize! if capitalized
      result << word + 'ay'
    else
      word += word.slice!(0..word.index(/[aeiou]/)-1)
      word.capitalize! if capitalized
      result << word + 'ay'
    end
  end
  result.join(' ')
end

