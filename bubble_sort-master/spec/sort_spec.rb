require 'spec_helper'
require_relative '../lib/sort'

describe "bubble_sort" do
  it "sorts the array with a simple order" do
      expect([5,3,2,1,4].bubble_sort).to eq([1,2,3,4,5])
  end

  it "sorts the array with negative numbers" do
      expect([-5,3,-2,1,-4].bubble_sort).to eq([-5,-4,-2,1,3])
  end

  it "sorts the array with floats" do
      expect([1.5,3.4,2,1,4].bubble_sort).to eq([1,1.5,2,3.4,4])
  end

  it "sorts the array with a randomized order" do
      expect((1..10).to_a.shuffle.bubble_sort).to eq((1..10).to_a)
  end
end
