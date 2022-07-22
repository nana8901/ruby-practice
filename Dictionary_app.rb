require "http"
require "awesome_print"
while true
  p "Enter a word to define, or enter 'stopstop' to end the program;"
  define = gets.chomp
  if define == "stopstop"
    break
  end
  defined = HTTP.get("https://api.wordnik.com/v4/word.json/#{define}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=API KEY").parse(:json)
  

  index = 0
  has_both = false
  while index < defined.length
    has_both = false
    if defined[index]["partOfSpeech"] == nil
      has_both = false
    elsif defined[index]["text"] == nil
      has_both = false
    else
      has_both = true
    end
    if has_both == true
      word_type = defined[index]["partOfSpeech"]
      definition = defined[index]["text"]
      # definition = definition.delete "<xref>", "</xref>"
      p word_type
      p definition
    end
    index += 1
  end
end
string = "foobar raboof"
string = string.delete "foobar"
p string


# word_type = defined[index]["partOfSpeech"]
# definition = defined[index]["text"]
# p word_type
# p definition
# definition = defined[0]["text"]
# p definition