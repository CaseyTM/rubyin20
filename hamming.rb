class Hamming
  def self.compute (string1,string2)
    if string1 == string2
      0
    elsif string1.length != string2.length
      raise ArgumentError
    else
      tracker = 0
      number = 0
      string1 = string1.split("")
      string1.each do |n|
        if n != string2[tracker]
          number +=1
        end
        tracker +=1
      end
      number
    end
  end
end

module BookKeeping
  VERSION = 3
end
