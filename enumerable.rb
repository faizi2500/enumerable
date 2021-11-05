module MyEnumerable
  def any?
    each do |item|
      return true if yield item
    end
    false
  end

  def all?
    each do |item|
      return false unless yield item
    end
    true
  end

  def filter?
    arr = []
    each do |item|
      arr << item if yield item
    end
    arr
  end
end
