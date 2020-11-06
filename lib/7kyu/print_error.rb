# Printer Errors

def printer_error(str)
  count = str.count('nopqrstuvwxyz')
  "#{count}/#{str.length}"
end
