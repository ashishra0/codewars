class Array
  def square
    map { |i| i * i }
  end

  def cube
    map { |i| i * i * i }
  end

  def sum
    inject(:+)
  end

  def average
    inject(:+) / size
  end

  def even
    select { |i|(i % 2).zero? }
  end

  def odd
    reject { |i| (i % 2).zero? }
  end
end
