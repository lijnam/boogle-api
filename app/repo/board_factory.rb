# frozen_string_literal: true

class BoardFactory
  def generate(cols:5,rows:5)
    @characters = []
    (1..cols).each do |_i|
      @characters = @characters.push(generate_characters(rows))
    end
    @characters
  end

  private

  def generate_characters(len)
    @characters = (0...len).map { rand(65..90).chr }.join
    @characters = @characters.chars.to_a
    @characters
  end
end
