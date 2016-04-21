require_relative "./note"

class Song
  attr_accessor :notes

  def initialize(notes = [])
    self.notes = notes
  end

  def to_s
    "Song: notes: #{notes.join(", ")}"
  end
end
