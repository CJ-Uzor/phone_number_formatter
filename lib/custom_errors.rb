class LengthError < StandardError

  def initialize(msg="Phone number is not 11 digits long")
    super(msg)
  end
end

class ValueTypeError < StandardError

  def initialize(msg="String is not a valid number")
    super(msg)
  end
end

class NumberError < StandardError

  def initialize(msg="Invalid phone number")
    super(msg)
  end
end
