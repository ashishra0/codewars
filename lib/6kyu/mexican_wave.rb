def wave(str)
  return [] if str.empty?

  new_str = white?(str) ? str.strip.split('') : str.split('')
  count = 0
  res = []

  loop do
    new_str[count].upcase!
    count += 1
    white?(str) ? res.push(" #{new_str.join('')} ") : res.push(new_str.join(''))
    new_str[count - 1].downcase!
    res.delete(str) if res.include?(str)
    break if count == new_str.length
  end
  res
end

def white?(str)
  str.start_with?(' ') && str.end_with?(' ')
end
