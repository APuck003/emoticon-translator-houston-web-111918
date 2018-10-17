require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  library = {}
  library["get_emoticon"] = {}
  library["get_meaning"] = {}
  
  emoticons.each do |word, symbols|
    library["get_meaning"][symbols[1]] = word
    library["get_emoticon"][symbols[0]] = symbols[1]
  end
  library
end

def get_japanese_emoticon(file, emoticon)
  load_library(file)
  
end

def get_english_meaning
  
end