class NumberController < ApplicationController
  def index
    @number = params[:number_prime].to_i
    @prime_numbers = get_prime(@number)
  end

  def get_prime(number)
    primeNumberArray = Array.new
    count = 2
    until primeNumberArray.length == number
      add_to_array = true
      if primeNumberArray.length > 0
        (0..primeNumberArray.length-1).each do |i|
          if count % primeNumberArray[i].to_i == 0
            add_to_array = false
            break
          end
        end
      end
      if add_to_array
        primeNumberArray.push count
      end
      count = count + 1
    end
    primeNumberArray
  end
end
