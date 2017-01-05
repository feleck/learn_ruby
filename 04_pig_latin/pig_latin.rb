def translate_my(text)
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

def translate phrase
  phrase.split.map do |word|
    # we are using "/x" to document this big fat regex
    capitalized = true if word == word.capitalize
    word =~ /^     # beginning of string
      (
       [^aeiouyq]*  # any number of consonants in a row
        (qu)?        # or maybe a 'qu'
      )
      (.*)           # the rest of the string
      $/x            # end of string

      # $1, $2, etc. get filled with the parenthesized chunks
      # from the most recent regular expression match
      first_phoneme = $1
      rest_of_word = $3
      if capitalized
        "#{rest_of_word}#{first_phoneme}ay".capitalize!
      else
        "#{rest_of_word}#{first_phoneme}ay"
      end
      end.join(" ")
 end
