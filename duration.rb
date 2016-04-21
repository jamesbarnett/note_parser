class Duration
  attr_accessor :numerator, :denominator

  def initialize(numerator, denominator)
    self.numerator = numerator
    self.denominator = denominator
  end

  def to_s
    "numerator: #{numerator}, denominator: #{denominator}"
  end
end
