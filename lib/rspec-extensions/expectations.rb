module RspecExtensions
  module Expectations
    def expect value
      yield.should == value
    end
  end
end
