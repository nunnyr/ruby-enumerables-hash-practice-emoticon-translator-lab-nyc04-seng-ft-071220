# require modules here
require "yaml"
require "pry"

def load_library(file)
  # code goes here
  emoticons = YAML.load_file("./lib/emoticons.yml")
  new_hash = {}
  
  
  #I am creating a new hash where each key is the name of the emoticon
  #the hash I am really iterating over is the emoticons
 emoticons.each do |key, value|
  #binding.pry
  #now I have my key which is the name
  #each Key has 2 values: english and my japenese emoticon
    new_hash[key] = {}
    
    #below is the way to write a new key and set it equal to its value
    #get that through your head
    #when you write the key you have to put it in symbol notation
    #the reason why key is not in symbol notation is because we are pulling it from the each iteration
    #if i just have it set to value and not value at index 0 then i am putting all of the 
    #values in it. i just want the english one
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]

    # binding.pry
    end
  new_hash
end

# load_library(file)

def get_japanese_emoticon(file, emoji)
  # code goes here
  library = load_library(file)
  emoji = library.find do |key|
    library[key][:english] == emoji
  end 
  if( emoji != emoji)
  p "Sorry, that emoticon was not found"
end
end

def get_english_meaning(file, emoticon)
  library = load_library(file)

  #wait scratched that this wants the meaning
  #this is tricky bc we are trying to find the japanese emoticon bc we are trying to translate that
  #into japanese name

  emoji = library.find do |key, value|
      library[key][:japanese] == emoji
  #if you cannot find a match we need a statement that says there is no translation
  #binding.pry
  #0
  end
  if (emoji != emoticon)
    p "Sorry, that emoticon was not found"
  # code goes here
  end
end

