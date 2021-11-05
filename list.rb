require_relative 'enumerable'
class MyList
  include MyEnumerable

  def initialize(*args)
    @list = []
    args.each { |arg| @list << arg }
  end

  def each(&block)
    @list.each(&block)
  end
end
