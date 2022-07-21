require "http"
require "awesome_print"
p "Enter a word to define;"
define = gets.chomp
defined = HTTP.get("https://api.wordnik.com/v4/word.json/#{define}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=7rzrusqms9ysbvd11ihq7idgk3slkzghxnqc6k6rmn3520mq9").parse(:json)

defined
index = 0
has_both = false
while index < defined.length && has_both == false
  if defined[index]["partOfSpeech"] == nil
    index += 1
  elsif defined[index]["text"] == nil
    index += 1
  else
    has_both = true
  end

end


word_type = defined[index]["partOfSpeech"]
definition = defined[index]["text"]
p word_type
p definition
# definition = defined[0]["text"]
# p definition