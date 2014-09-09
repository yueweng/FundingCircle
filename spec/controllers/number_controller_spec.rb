require 'spec_helper'
require 'rails_helper'

describe NumberController do
  describe "#index" do
      it "should return the correct prime nunber" do
        get :index, :number_prime => 3
        assigns(:number).should == 3
      end

      it "should return the prime numbers" do
        get :index, :number_prime => 5
        assigns(:prime_numbers).should == [2 ,3, 5, 7, 11]
      end
   end
end
