#!/usr/bin/env ruby

require_relative "./song"

class NoteParser
  PATTERN = /(?<base_note>REST|[A-G])(?<modifier>[b,#]?)(?<octave>\d*)\s+(?<numerator>\d)\/(?<denominator>\d+)/

  def initialize
    songs = []

    Dir["music/*.txt"].each do |file|
      puts "File: #{file}"
      songs << Song.new
      songs.last.notes = []
      File.open(file).each_line do |line|
        m = PATTERN.match(line)
        pitch = Pitch.new(m["base_note"], m["modifier"], m["octave"])
        duration = Duration.new(m["numerator"], m["denominator"])
        songs.last.notes << Note.new(pitch, duration)
      end
      puts songs.last
    end
  end
end

NoteParser.new
