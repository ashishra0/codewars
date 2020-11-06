class Array
  def square
    map { |i| i**2 }
  end

  def cube
    map { |i| i**3 }
  end

  def sum
    inject(:+)
  end

  def average
    inject(:+) / size
  end

  def even
    select { |i| (i % 2).zero? }
  end

  def odd
    reject { |i| (i % 2).zero? }
  end
end
