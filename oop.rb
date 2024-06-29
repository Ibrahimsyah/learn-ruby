class Repository
  def initialize
    @numbers = []
  end

  def getNumberCount
    return @numbers.size
  end

  def getNumberByIndex(n)
    return @numbers[n]
  end

  def getNumbers
    return @numbers
  end

  def pushNumber(number)
    @numbers.push(number)
  end
end

class Usecase
  def initialize(repository)
    @repository = repository
  end

  def getNumberCount
    return @repository.getNumberCount
  end

  def getBiggestNumber
    numbers = @repository.getNumbers()

    result = 0
    numbers.each do |num|
      result = num if num > result
    end

    return result
  end

  def insertNumber(number)
    @repository.pushNumber(number)
  end

  def getNumberByIndex(n)
    return @repository.getNumberByIndex(n)
  end
end

r = Repository.new
u = Usecase.new(r)

u.insertNumber(2)
u.insertNumber(1)
u.insertNumber(3)

(0..u.getNumberCount() - 1).each do |i|
  puts u.getNumberByIndex(i)
end

puts "The biggest number is #{u.getBiggestNumber()}"
