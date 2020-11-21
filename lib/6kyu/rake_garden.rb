def rake_garden(garden)
  trash = []
  garden.split(' ').each do |word|
    trash.push(word) if word != 'gravel' && word != 'rock'
  end
  trash.each do |word|
    garden.gsub!(word, 'gravel') if garden.include?(word)
  end
  garden
end
