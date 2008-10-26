require File.join(File.dirname(__FILE__), %w[.. helper])

describe RspecExtensions::Expectations do
  include RspecExtensions::Expectations

  describe "expect value" do
    it "should work just like should ==" do
      expect 3 do
        1 + 2
      end
    end
  
    it "should fail just like should ==" do
      lambda do
        expect 3 do
          1 + 1
        end
      end.should raise_error(/expected: 3.*got: 2/m)
    end
  end

  describe "expect error" do
    describe "when the block raises the expected error" do
      it "should pass with Exception" do
        expect Exception do
          raise "this error"
        end
      end
      it "should pass with a subclass of the named exception" do
        expect NameError do
          raise 1.non_existent_method
        end
      end
    end
    
    describe "when the block raises the expected error and message" do
      it "should pass" do
        expect NameError, /undefined/ do
          raise 1.non_existent_method
        end
      end
    end
    
    describe "when the block raises the expected error with the wrong message" do
      it "should fail" do
        lambda do
          expect NameError, /wrong message/ do
            raise 1.non_existent_method
          end
        end.should raise_error(/expected NameError/)
      end
    end
    
    describe "when the block raises the wrong error" do
      it "should fail" do
        lambda do
          expect NameError do
            raise "this is not a name error"
          end
        end.should raise_error(/expected/)
      end
    end
  end
end
