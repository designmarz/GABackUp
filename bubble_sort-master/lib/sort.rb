class Array

  def bubble_sort
    n = self.length
    loop do
      swapped = false
      (n-1).times do |i|
        if self[i] > self[i+1]
          self[i], self[i+1] = self[i+1], self[i] 
        i += 1
        swapped = true
        end
      end
      break if not swapped
  end
  return self
  end  
end