def create_phone_number(numbers)
  result = []
  result << (prefix(numbers) + line_number(numbers))

  result.join('')
end

private

def prefix(numbers)
  arr = []
  arr.push(numbers.take(3).join(''))
  arr.unshift('(')
  arr.push(') ')

  arr.join('')
end

def line_number(numbers)
  number = numbers.slice(3, numbers.length - 1)
  number.insert(3, '-')

  number.join('')
end
