require "yaml"
def load_library(file_path)
  nds = YAML.load_file(file_path)
  new_nds = {}
  new_nds['get_meaning'] = {}
  new_nds['get_emoticon'] = {}
  nds.each do |meaning, array|
    new_nds['get_meaning'][array[1]] = meaning
    new_nds['get_emoticon'][array[0]] = array[1]
  end
  
end

def get_japanese_emoticon(file_path, emoticon)
  load_library(file_path)
  new_nds['get_emoticon'].each do |english_emote, japanese_emote|
    if emoticon == english_emote
      return japanese_emote
    end
  end
end

def get_english_meaning
  # code goes here
end