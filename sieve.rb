module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(prime) 
    @primes = (2..prime).to_a
  end

  def primes
    @primes.each do |n|
      while n < @primes.last
        n *= 2
        @primes.delete(n)
      end
    end
    @primes
  end
end