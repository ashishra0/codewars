def pig_it(str)
  special = ''
  if special_match(str)
    special = str.gsub(/\s+/, '').match(/\W/)
    str.gsub!(special.to_s, '')
  end
  new_str = []
  str.split(' ').each do |wor|
    first = "#{wor.slice!(0)}ay"
    wor += first
    new_str << wor
  end

  new_str << special.to_s if special != ''

  new_str.join(' ')
end

private

def special_match(str)
  !str.gsub(' ', '')[/\W/].nil?
end
