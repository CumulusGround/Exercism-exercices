=begin
Write your code for the 'Gigasecond' exercise in this file. Make the tests in
`gigasecond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/gigasecond` directory.
=end

class Gigasecond
  def self.from(timepoint)
    if timepoint.sec == 59
      g_time = timepoint + (timepoint.sec + (10**9))
      g_time - 59
    else
      timepoint + (timepoint.sec + (10**9))
    end
  end
end