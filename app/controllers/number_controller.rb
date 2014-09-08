class NumberController < ApplicationController
  def index
    @number = params[:number_prime].to_i
    @prime_numbers = get_prime(@number)
  end

  def get_prime(number)
    primeNumberArray = Array.new
    count = 2
    begin
      debugger
      primeNumberArray.push count
    end while primeNumberArray.length == number
  end
end
