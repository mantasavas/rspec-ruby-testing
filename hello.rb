class HelloWorld

   def say_hello 
      "Hello World!"
   end
   
end

describe HelloWorld do 
   context "When testing the HelloWorld" do 
      
      it "should say Hello World we call the say_hello" do 
         hw = HelloWorld.new 
         message = hw.say_hello 
         expect(message).to eq "Hello World!"
      end
      
   end
end