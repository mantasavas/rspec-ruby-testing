class ClassRoom 
   def initialize(students) 
      @students = students 
   end 
   

   def list_student_names 
      @students.map(&:name).join(',') 
   end 
	
end 

describe ClassRoom do 
   it 'the list_student_names method should work correctly' do

      # Creates testing class student, allow method provides stubs methods, we need for testing porpuses
      student1 = double('student') 
      student2 = double('student')

      # This is older version of double mocks, but there is newer version as well
      # allow(student1).to receive(:name) { 'John Smith'}
      # allow(student2).to receive(:name) { 'Jill Smith'} 

      # newer double mock version
      student1.stub(:name).and_return('John Smith')
      student2.stub(:name).and_return('Jill Smith') 
      
      cr = ClassRoom.new [student1,student2] 
      expect(cr.list_student_names).to eq('John Smith,Jill Smith') 
   end 
end