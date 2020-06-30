
module Acronym
  def self.abbreviate(sentence)
    sentence
      .split(/[^a-zA-Z0-9]/)
      .map { |word| word[0] }
      .join.upcase
  end
end