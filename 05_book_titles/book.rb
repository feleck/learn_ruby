class Book
  attr_accessor :title
  def title
    words_no_cap = ["and", "in", "of", "or", "the", "over", "to", "the", "a", "an", "but"]
    result = []
    title = @title.split
    title.each_index do |i|
      title[i] = title[i].capitalize unless words_no_cap.include? title[i]
      title[i] = title[i].capitalize if title[i] == 'i'
    end
    title.first.capitalize!
    title.join(' ')
  end
      
end
