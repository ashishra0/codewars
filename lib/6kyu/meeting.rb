def meeting(s)
  arr = s.gsub(";", " ").split(" ")
  arr = arr.map do |name|
    name.gsub!(":", " ").upcase!
    name = name.split(" ")
    name[0], name[1] = name[1], name[0].prepend(" ")
    name[0].concat(",")
    name.unshift("(")
    name.push(")")
  end
  arr.sort.join("")
end