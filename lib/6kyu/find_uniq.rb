def find_uniq(arr)
  return arr.first if arr.length == 1

  unique = arr.uniq
  if arr.count(unique.first) == 1
    unique.first
  else
    unique.last
  end
end
