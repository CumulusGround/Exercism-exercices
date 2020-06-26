=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end


class Complement

  def self.of_dna(dna_string)

    # THIS SOLUTION
    
    # complement_list = {
    #   "G" => "C",
    #   "C" => "G",
    #   "T" => "A",
    #   "A" => "U"
    # }

      # dna_string.chars
      #   .map { |char| complement_list[char] }
      #   .join

    # OR

    dna_string.tr("GCTA","CGAU")
  end
end

