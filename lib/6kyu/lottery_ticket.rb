def bingo(ticket, win)
  count = 0
  ticket.each do |row|
    row[0].chars.each do |char|
      count += 1 if char.ord == row[1]
    end
  end
  count >= win ? 'Winner!' : 'Loser!'
end
