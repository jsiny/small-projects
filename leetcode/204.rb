# https://leetcode.com/problems/count-primes/

require 'benchmark'
require 'prime'

# Not fast enough

def count_primes_brute(n)
  (2...n).count(&:prime?)
end

# Sieve of Eratosthenes

def count_primes_eratosthenes(n)
  primes = (0...n).to_a
  primes[0] = primes[1] = nil

  primes.each do |p|
    next unless p
    break if p**2 > n

    (p**2).step(n, p) { |x| primes[x] = nil }
  end

  primes.compact.size
end

# Nice Ruby :)

def count_primes_each(n)
  Prime.each(n - 1).count
end

n = 1_000_000

Benchmark.bm(22) do |x|
  x.report('brute force:')           { count_primes_brute(n) }
  x.report('sieve of Eratosthenes:') { count_primes_eratosthenes(n) }
  x.report('Prime class:')           { count_primes_each(n) }
end

# Benchmark results: https://leetcode.com/problems/count-primes/discuss/494310/benchmark-ruby-solution-prime-class-vs-sieve-of-eratosthenes