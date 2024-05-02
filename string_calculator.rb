# Calculator to add numbers from a string.
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers = numbers.split(get_delimiter(numbers), -1)

    raise 'Invalid input' if numbers.include?('')

    numbers.map(&:to_i).reduce(:+)
  end
  def get_delimiter(numbers)
    delimiter = /[\n,]/
    if numbers.start_with?("//")
      delimiter = numbers[2..numbers.index("\n") - 1]
    end

    delimiter
  end
end


