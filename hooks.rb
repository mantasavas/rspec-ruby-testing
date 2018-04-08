class SimpleClass 
   attr_accessor :message 
   
   def initialize() 
      puts "\nCreating a new instance of the SimpleClass class" 
      @message = 'howdy' 
   end 
   
   def update_message(new_message) 
      @message = new_message 
   end 
end 

describe SimpleClass do 
   # This is a hook it allows to run code setup (initilazing environment) and teardown (cleaning)
   # It would be excuted after each it (example)
   # It would get printed "Creating a new instance..." twice
   # It creates special class within describe block
   # If each test (Example) needs an instance of SimpleClass, we can put that code in the before hook and not have to add it to each example.
   before(:each) do 
      @simple_class = SimpleClass.new 
   end 
   
   it 'should have an initial message' do 
      expect(@simple_class).to_not be_nil
      @simple_class.message = 'Something else. . .' 
   end 
   
   it 'should be able to change its message' do
      @simple_class.update_message('a new message')
      expect(@simple_class.message).to_not be 'howdy' 
   end
end



describe "Before and after hooks" do 
   before(:each) do 
      puts "Runs before each Example" 
   end 
   
   after(:each) do 
      puts "Runs after each Example" 
   end 
   
   before(:all) do 
      puts "Runs before all Examples" 
   end 
   
   after(:all) do 
      puts "Runs after all Examples"
   end 
   
   it 'is the first Example in this spec file' do 
      puts 'Running the first Example' 
   end 
   
   it 'is the second Example in this spec file' do 
      puts 'Running the second Example' 
   end 
end


# Runs before all Examples 
# Runs before each Example 
# Running the first Example 
# Runs after each Example 
# .Runs before each Example 
# Running the second Example 
# Runs after each Example 
# .Runs after all Examples