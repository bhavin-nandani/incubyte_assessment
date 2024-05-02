# Calculator to add numbers from a string.
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers = numbers.split(/[\n,]/, -1)
    
    raise 'Invalid input' if numbers.include?('')

    numbers.map(&:to_i).reduce(:+)
  end
end


