def find_outlier(data)
  result = data.find_all(&:odd?)
  result = data.find_all(&:even?) if result.length >= 2 || result.empty?

  result.first
end
