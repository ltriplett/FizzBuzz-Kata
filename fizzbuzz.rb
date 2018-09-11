class FizzBuzz
  def generate(*number)
    result = []
    number.each do |n|
      if !n.is_a?(Integer) || (n < 1 || n > 100)
        return 'Invalid entry'
      elsif n % 3 == 0 && n % 5 == 0
        result << 'FizzBuzz'
      elsif n % 3 == 0
        result << 'Fizz'
      elsif n % 5 == 0
        result << 'Buzz'
      else
        result << n.to_s
      end
    end
    result
  end
end