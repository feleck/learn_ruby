def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text, i = nil)
  unless i
    return "#{text} #{text}"
  else
    return "#{text} " * (i - 1) + text
  end
end

def start_of_word(word, i)
  word[0..i-1]
end

def first_word(text)
  text.split[0]
end

def titleize2(text)
  words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
  result = []
  words = text.split
  words.each_index do |i|
    if i > 0 and words_no_cap.include? words[i]
      result << words[i]
    else
      result << words[i].capitalize 
    end
  end
  result.join(" ")
end

def titleize(text)
  words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
  words = text.split
  words.each_index do |i|
    unless words_no_cap.include? words[i]
      words[i] = words[i].capitalize
    end
  end
  words.first.capitalize
  words.join(" ")
end

