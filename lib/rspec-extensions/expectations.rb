module RspecExtensions
  module Expectations
    def expect *args, &block
      value = args.shift
      if Class === value
        if args.empty?
          block.should raise_error(value)
        else
          block.should raise_error(value, args.first)
        end
      else
        block.call.should == value
      end
    end
  end
end
