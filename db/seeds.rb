

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Course.create(course_id: 'EECE7012', course_name: 'Software Engineering' )
Course.create(course_id: 'COMP7012', course_name: 'Software Engineering' )


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Pending.create(contract_id: 1245, uid: "U0005355", firstName: "Krishna", lastName: "chikkala", email: "hsirrk341@gmail.com", phoneNumber: "9016049107", semester: "fall2014", profName: "Ravi", profEmail: "asdkf@memphis.edu", course_id: "3827", year:2012, present_date: Date.new(1955,3,19))
Pending.create(contract_id: 1246, uid: "U0005355", firstName: "Krishna", lastName: "chikkala", email: "hsirrk341@gmail.com", phoneNumber: "9016049107", semester: "fall2014", profName: "Ravi", profEmail: "asdkf@memphis.edu", course_id: "3827", year:2012, present_date: Date.new(1955,3,19))
Pending.create(contract_id: 1247, uid: "U0005355", firstName: "Krishna", lastName: "chikkala", email: "hsirrk341@gmail.com", phoneNumber: "9016049107", semester: "fall2014", profName: "Ravi", profEmail: "asdkf@memphis.edu", course_id: "3827", year:2012, present_date: Date.new(1955,3,19))
Pending.create(contract_id: 1248, uid: "U0005355", firstName: "Krishna", lastName: "chikkala", email: "hsirrk341@gmail.com", phoneNumber: "9016049107", semester: "fall2014", profName: "Ravi", profEmail: "asdkf@memphis.edu", course_id: "comp7012", year:2012, present_date: Date.new(1955,3,19))




Honor.create(contract_id: 00001,  uid: "U00564017",  course_id: "comp7012",  prof_email: "sflem@memphis.edu",  semester: "spring",  year: 2015,  grade: "A",  pdf: "",  dates: "2015-04-08")

 
Professor.create(profName: 'Scott Fleming', profEmail: 'sflem@memphis.edu' )
 

   

Student.create( UID: "584001", firstName: "krishna", lastName: "chikkala", email: "vkchkkla@memphis.edu", phoneNumber: "9016049107",status: "passed" )
Student.create( UID: "999584001", firstName: "krishna1", lastName: "chikkala1", email: "xvechik@memphis.edu", phoneNumber: "9016044449107",status: "failed" )
 
