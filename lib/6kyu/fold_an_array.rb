def fold_array(array, runs)
  runs.times do
    return [array.inject(:+)] if array.length <= 2

    second_half = get_half_array(array)[1].reverse
    array = get_half_array(array)[0]
    diff = array.size - second_half.size
    diff.times { second_half.push(0) }
    array = [second_half, array].transpose.map(&:sum)
  end

  array
end

def get_half_array(array)
  array.each_slice((array.size / 2.0).round).to_a
end
