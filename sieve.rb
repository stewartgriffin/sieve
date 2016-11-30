module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(prime) 
    @primes = (2..prime).to_a
  end

  def primes
    @primes.each do |n|
      current_n = n
      while current_n < @primes.last
        current_n += n
        @primes.delete(current_n)
      end
    end
    @primes
  end
end