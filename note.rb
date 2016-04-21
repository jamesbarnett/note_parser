require_relative "./pitch"
require_relative "./duration"

class Note
  attr_accessor :pitch, :duration

  def initialize(pitch, duration)
    self.pitch = pitch
    self.duration = duration
  end

  def to_s
    "Note: #{pitch}, Duration: #{duration}"
  end
end
