def bingo(ticket, win)
  count = 0
  ticket.each do |row|
    row[0].chars.each do |char|
      if char.ord == row[1]
        count += 1
      end
    end
  end
  count >= win ? "Winner!" : "Loser!"
end