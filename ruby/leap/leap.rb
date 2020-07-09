
module Year 
  def self.leap?(year)
    (year / 4).even? ? 'true' : 'false'
  end
end
