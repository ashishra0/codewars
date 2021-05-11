def str_to_hash(str)
  array = str.split

  hash = {}
  array.each do |val|
    content = val.split('=')
    hash[content[0]] = content[1].to_i
  end

  hash.transform_keys(&:to_sym)
end
