#require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'spec_helper'


module ClosestFibonacciSpecHelper
  def test_cases
    { -1  => nil,
      -3456 => nil,
      -0 => nil,
      0 => nil,
      1 => 0,
      2 => 1,
      4 => 3,
      5 => 3,
      9 => 8,
      156 => 144,
      99 => 89,
      10000 => 6765
    }
  end
end

describe "ClosestFibonacci" do
        include ClosestFibonacciSpecHelper
  it "should be valid" do
	test_cases.each do |k,v|
      k.closest_fibonacci.should eq(v)
	end
  end
end
