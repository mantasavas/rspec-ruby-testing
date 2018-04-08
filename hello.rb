class HelloWorld

   def say_hello 
      "Hello World!"
   end
   
end

#describe, context, it keywords can take a class name and/or string argument.
describe HelloWorld do 
   #it encloses tests of a certain type.
   #context “When passing bad parameters to the foobar() method” 
   #context “When passing valid parameters to the foobar() method” 
   #context “When testing corner cases with the foobar() method”
   context "When testing the HelloWorld" do 
      #The word it is another RSpec keyword which is used to define an “Example”. An example is basically a test or a test case.
      it "should say Hello World we call the say_hello" do 
         hw = HelloWorld.new 
         message = hw.say_hello 
         # eq is matcher keyword, other examples eq, eql, be, equal
         expect(message).to eq "Hello World!"
      end
      
   end
end


# Examples with other keyword matchers
describe "An example of the equality Matchers" do 

   it "should show how the equality Matchers work" do 
      a = "test string" 
      b = a 
      
      # The following Expectations will all pass 
      expect(a).to eq "test string" 
      expect(a).to eql "test string" 
      expect(a).to be b 
      expect(a).to equal b 
   end
   
end

describe "An example of the type/class Matchers" do
 
   it "should show how the type/class Matchers work" do
      x = 1 
      y = 3.14 
      z = 'test string' 
      
      # The following Expectations will all pass
      expect(x).to be_instance_of Fixnum 
      expect(y).to be_kind_of Numeric 
      expect(z).to respond_to(:length) 
   end
   
end


describe "An example of the true/false/nil Matchers" do
   it "should show how the true/false/nil Matchers work" do
      x = true 
      y = false 
      z = nil 
      a = "test string" 
      
      # The following Expectations will all pass
      expect(x).to be true 
      expect(y).to be false 
      expect(a).to be_truthy 
      expect(z).to be_falsey 
      expect(z).to be_nil 
   end 
end