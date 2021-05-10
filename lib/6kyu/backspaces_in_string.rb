def clean_string(string)
  return '' if string.empty?

  string.length.times do |_|
    string.slice!(string.index('#')) if string.start_with? '#'

    if string.include?('#') && !string.start_with?('#')
      string.slice!(string.index('#') - 1)
      string.slice!(string.index('#'))
    end
  end

  string
end
