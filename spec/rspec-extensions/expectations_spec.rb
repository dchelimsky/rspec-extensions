require File.join(File.dirname(__FILE__), %w[.. helper])

describe "expect value" do
  include RspecExtensions::Expectations
  it "should work just like should ==" do
    expect 3 do
      1 + 2
    end
  end
  
  it "should fail just like should ==" do
    lambda {
      expect 3 do
        1 + 1
      end
    }.should raise_error(/expected: 3.*got: 2/m)
  end
end