# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Hairshop.create( name: '권기벙', address: '서울시 성동구 행당동', phonenumber: '000-0000')
Hairshop.create( name: '유성동', address: '서울시 성동구 성동', phonenumber: '000-0000')
Hairshop.create( name: '소차노', address: '서울시 강남구 도곡동', phonenumber: '000-0000')

Eval.create( hairshop_id: 1, user_id: 1, content: "예시", rating_a: 5, rating_b: 2, rating_c: 4, rating_d: 3, rating_e: 2, rating_f: 2)
