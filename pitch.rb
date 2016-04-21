class Pitch
  attr_accessor :base_note, :octave, :modifier

  def initialize(base_note, octave, modfifier)
    self.base_note = base_note
    self.octave = octave
    self.modifier = modfifier
  end

  def to_s
    "base note: #{base_note}#{modifier_to_s}#{octave_to_s}"
  end

  private

  def modifier_to_s
    if modifier && !modifier.empty?
      ", modifier: #{modifier}"
    end
  end

  def octave_to_s
    if octave && !octave.empty?
      ", octave: #{octave}"
    end
  end
end
