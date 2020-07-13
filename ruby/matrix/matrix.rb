class Matrix
  attr_reader :rows

  def initialize(string_matrix)
    @rows = turn_string_into_2d_array(string_matrix)
  end

  def columns
    columns_array = []
    n_of_columns = @rows[0].size
    x = 0

    while x < n_of_columns
      current_col = []    
      @rows.each do |row|
        current_col << row[x]
      end
      columns_array << current_col
      x += 1
    end    
    columns_array
  end

  def turn_string_into_2d_array(string)
    first_array = string.split("\n")
    two_d_array = first_array.map { |row| row.split }
    convert_strings_in_array_to_integer(two_d_array)
  end

  def convert_strings_in_array_to_integer(twoD_array)
    twoD_array.map do |array|
      array.map { |n| n.to_i }
    end
  end
end