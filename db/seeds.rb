
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Course.create!(course_id: 'EECE7012', course_name: 'Software Engineering' )
Course.create!(course_id: 'COMP7012', course_name: 'Software Engineering' )


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Pending.create(contract_id: 1245, uid: "U00053556", firstName: "Krishna", lastName: "chikkala", email: "hsirrk341@gmail.com", phoneNumber: "9016049107", semester: "fall2014", profName: "Ravi1", profEmail: "asdkf@memphis.edu", course_id: "382799", year:2012, present_date: Date.new(1955,3,19))
Pending.create(contract_id: 1246, uid: "U00053557", firstName: "Ravi", lastName: "goli", email: "ravi@gmail.com", phoneNumber: "90164407", semester: "fall2014", profName: "Ravi2", profEmail: "asdsdsdsdkf@memphis.edu", course_id: "3827", year:2012, present_date: Date.new(1955,3,19))
Pending.create(contract_id: 1247, uid: "U00053558", firstName: "Ramu", lastName: "gopidi", email: "ramu@gmail.com", phoneNumber: "9016339107", semester: "fall2014", profName: "Ravi3", profEmail: "asadsdkf@memphis.edu", course_id: "38", year:2012, present_date: Date.new(1955,3,19))
Pending.create(contract_id: 1248, uid: "U00053559", firstName: "Rahul", lastName: "aketi", email: "rahul@gmail.com", phoneNumber: "9012249107", semester: "fall2014", profName: "Ravi4", profEmail: "asadswwdkf@memphis.edu", course_id: "37", year:2012, present_date: Date.new(1955,3,19))




Honor.create(contract_id: 00001,  uid: "U00564017",  course_id: "comp70123",  prof_email: "sflem@memphis.edu",  semester: "spring",  year: 2015,  grade: "A",  pdf: "",  dates: "2015-04-08")

Honor.create(contract_id: 00001,  uid: "U0005355",  course_id: "comp7012",  prof_email: "sflem@memphis.edu",  semester: "spring",  year: 2015,  grade: "A",  pdf: "",  dates: "2015-04-08")


 
Professor.create(profName: 'Scott Fleming', profEmail: 'sflem@memphis.edu' )
 

   

Student.create( UID: "U0005355", firstName: "krishna", lastName: "chikkala", email: "vkchkkla@memphis.edu", phoneNumber: "9016049107",status: "passed" )
Student.create( UID: "U0005356", firstName: "krishna1", lastName: "chikkala1", email: "xvechik@memphis.edu", phoneNumber: "9016044449107",status: "failed" )
 


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Student.create(UID: "U00564017",firstName: "yehui",lastName: "tank",email: "fjklda@gmail.com",phoneNumber: 12345,status: "pass");
Student.create(UID: "U00564017",firstName: "yfdhui",lastName: "tank",email: "fjklda@gmail.com",phoneNumber: 12345,status: "pass");
Student.create(UID: "U00564017",firstName: "fdewak",lastName: "tank",email: "fjklda@gmail.com",phoneNumber: 12345,status: "pass");
Student.create(UID: "U00564017",firstName: "esr",lastName: "tank",email: "fjklda@gmail.com",phoneNumber: 12345,status: "pass");
Student.create(UID: "U00564017",firstName: "fea",lastName: "tank",email: "fjklda@gmail.com",phoneNumber: 12345,status: "pass");
Student.create(UID: "U00564017",firstName: "fea",lastName: "tank",email: "fjklda@gmail.com",phoneNumber: 12345,status: "fail");


#Honor.create(contract_id: 00001,  uid: U00564017,  course_id: comp7012,  prof_email: sflem@memphis.edu,  semester: spring,  year: 2015,  grade: A,  pdf: "",  dates: 2015-04-08)

#Pending.create(contract_id: 1245, uid: "U0005355", firstName: "Krishna", lastName: "chikkala", email: "hsirrk341@gmail.com", phoneNumber: "9016049107", semester: "fall2014", profName: "Ravi", profEmail: "asdkf@memphis.edu", course_id: "3827", year:2012, present_date: Date.new(1955,3,19))




Course.create(course_id: 'EECE7012', course_name: 'Software Engineering' )
Course.create(course_id: 'COMP7012', course_name: 'Software Engineering' )


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 
Student.create( UID: "584001", firstName: "krishna", lastName: "chikkala", email: "vkchkkla@memphis.edu", phoneNumber: "9016049107",status: "passed" )
Student.create( UID: "999584001", firstName: "krishna1", lastName: "chikkala1", email: "xvechik@memphis.edu", phoneNumber: "9016044449107",status: "failed" )

 
User.create! :email => 'admin@memphis.edu', :password => 'letmein', :password_confirmation => 'letmein',:role => 'Admin'
User.create! :email => 'secretary@memphis.edu', :password => 'letmein', :password_confirmation => 'letmein',:role => 'Secretary'
User.create! :email => 'director@memphis.edu', :password => 'letmein', :password_confirmation => 'letmein',:role => 'Director'

Contract.create(contract_identity: 1245, uuid: "U00053557", contractor_name: "Jesus", email: "JCHRISTY@gmail.com", contractor_phone: "9018675309", semester: "fall2015", instructor: "Happel", instructor_email: "aahappel@memphis.edu", course: "Reading", year:2014, section: "01b", credit_hours:3 )
Contract.create(contract_identity: 1246, uuid: "U00053557", contractor_name: "Jesus", email: "JCHRISTY@gmail.com", contractor_phone: "9018675309", semester: "fall2015", instructor: "Happel", instructor_email: "aahappel@memphis.edu", course: "Righting", year:2014, section: "01b", credit_hours:3 )
Contract.create(contract_identity: 1247, uuid: "U00053557", contractor_name: "Jesus", email: "JCHRISTY@gmail.com", contractor_phone: "9018675309", semester: "fall2015", instructor: "Happel", instructor_email: "aahappel@memphis.edu", course: "Rithmatic", year:2014, section: "01b", credit_hours:3 )

#contract_identity :integer
#  email             :string
#  contractor_name   :string
#  uuid              :string
#  contractor_phone  :string
#  course            :string
#  section           :string
#  credit_hours      :integer
#  semester          :string
#  year              :integer
#  instructor        :string
#  instructor_email  :string