class SmartTrafficLight
  attr_accessor :street1, :street2

  def initialize(street1, street2)
    @street1 = street1
    @street2 = street2
  end

  def turn_green
    if street1[0] > street2[0]
      street1[0] = 0
      street1[1]
    elsif street1[0] < street2[0]
      street2[0] = 0
      street2[1]
    elsif street1[0] == street2[0]
      nil
    end
  end
end
