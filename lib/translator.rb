# require modules here
require "yaml"
require "pry"

<<<<<<< HEAD
def load_library(file_path)
<<<<<<< HEAD

=======
=======
def load_library(file)
<<<<<<< HEAD
>>>>>>> 2f2fc6811670f23d12c8df2adba62052ec991e04
  # code goes here
>>>>>>> 037e1cd03b91cdd2480fafc648a93e56f5c4585e

  emoticons = YAML.load_file(file_path)
  
  translation_hash = {}

  emoticons.each do |emoji_name, translated_items_array|
    
    translation_hash[emoji_name] = {}
 
    translation_hash[emoji_name]
    translation_hash[emoji_name][:english] = translated_items_array[0]
  
    translation_hash[name_of_emoji][:japanese] = translated_items_array[1]

  end
  translation_hash
end


#I am creating a new hash where each key is the name of the emoticon. aka "angel"
  #the hash I am really iterating over is the emoticons (which are the values)
  #binding.pry
  #now I have my key which is the name
  #each Key has 2 values: english and my japenese emoticon
=======
  emoticons = YAML.load_file("./lib/emoticons.yml")
  new_hash = {}
  
  emoticons.each do |key, value|
    new_hash[key] = {}
    
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
 # binding.pry
    end
  new_hash
end
  
  
  
  #I am creating a new hash where each key is the name of the emoticon
  #the hash I am really iterating over is the emoticons
 
  #binding.pry
  #now I have my key which is the name
  #each Key has 2 values: english and my japenese emoticon
    
>>>>>>> cbb1f926678960f77804f587c9303cc2945487b9
    
    
    #binding.pry
    #below is the way to write a new key and set it equal to its value
    #when you write the key you have to put it in symbol notation
    
    #if i just have it set to value and not value at index 0 then i am putting all of the 
    #values in it. i just want the english one
<<<<<<< HEAD
=======


>>>>>>> cbb1f926678960f77804f587c9303cc2945487b9
    

# load_library(file)
#the reason why key is not in symbol notation is because we are pulling it from the each iteration
def get_japanese_emoticon(file_path, emoticon)
  # code goes here

    library = load_library(file_path)
    binding.pry
    #emoji = library.find do |key|
    #library[key][:english] == emoji
  
end


get_japanese_emoticon(file_path, emoticon)

# def get_english_meaning(file, emoticon)
#   library = load_library(file)

#   #wait scratched that this wants the meaning
#   #this is tricky bc we are trying to find the japanese emoticon bc we are trying to translate that
#   #into japanese name

#   # emoji = library.find do |key, value|
#   #     library[key][:japanese] == emoji
#   #if you cannot find a match we need a statement that says there is no translation
#   #binding.pry
#   #0
#   # end
#   # if (emoji != emoticon)
#   #   p "Sorry, that emoticon was not found"
#   # # code goes here
#   # end
# end

