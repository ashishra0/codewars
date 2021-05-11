def growing_plant(up_speed, down_speed, desired_height)
  height = up_speed
  count = 1

  return count if desired_height < height

  until height >= desired_height
    height -= down_speed
    height += up_speed
    count += 1
  end

  count
end
