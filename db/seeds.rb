# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

emp = Employee.new
emp = Employee.create(
	name: "Arun",
	email: "arun@gmail.com",
	password: "12345",
	phone: "7324582585",
	address: "Bihar"
)

emp = Employee.create(
	name: "Niket",
	email: "niket@gmail.com",
	password: "niket@123",
	phone: "7324582585",
	address: "Bihar"
)

det = Detail.new
det = Detail.create(
	name:"Arun",
	email:"arun@gmail.com",
	password:"12345",
	phone:"7324582585",
	address:"Gpj"
)

emp1 = Employee.new
emp1 = Employee.create(
	name:"Abc",
	email:"abc@gmail1.com",
	password:"54321",
	phone:"7324582585",
	address:"Jaipur"
)

st = Student.new
st = Student.create(
	st_name: "Shivang",
	st_roll: "16ecocs050"
)
# name: 'shivang' , email: 'shivang@gmil.com', password: '1234', phone: '123456789', address: 'jaipur'