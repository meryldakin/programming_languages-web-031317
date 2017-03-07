require "pry"
def reformat_languages(languages)
  new_format = {}
  languages.keys.each do |types|
    languages[types].each do |language, data|
      new_format[language] = data
      new_format[language][:style] = []
    end
  end
  new_format.each do |language, data_hash|
    if languages[:oo].include?(language)
      data_hash[:style].push(:oo)
    end
    if languages[:functional].include?(language)
      data_hash[:style].push(:functional)
    end
  end
  return new_format
end
