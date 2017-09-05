# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Law_office = LawOffice.find_or_create_by(
    
      name: 'Camargo and Associates',
      phone_number: '919-123-4567' , 
      street_address: '00 Main St', 
      city: 'Durham',
      state: 'North Carolina',
      zip: '27701',
      website_link: 'www.camargoandassociates.com'
    
)

LawOffice.find_or_create_by(
  
    name: 'Cruzaley Law Firm', 
    phone_number: '987-274-4732', 
    street_address: '01 Main St',
    city: 'Durham',
    state: 'North Carolina', 
    zip: '27701', 
    website_link: 'www.cruzaleylawfirm.com'
  
)

LawOffice.find_or_create_by(
  
    name: 'Aaron Jimenez Immigration Law Office',
    phone_number: '919-123-5678',
    street_address: '02 Main St',
    city: 'Durham',
    state: 'North Carolina',
    zip: '27701',
    website_link: 'www.jimenezimmigration.com'
)

LawOffice.find_or_create_by(
  
  name: 'Maldonado Immigration',
  phone_number: '919-213-3456', 
  street_address: '03 Main St',
  city: 'Durham',
  state: 'North Carolina',
  zip: '27701',
  website_link: 'www.maldonadoimmgration.com'
)

LawOffice.find_or_create_by(
  name: 'Antonio Camargo Immigration', 
  phone_number: '919-758-4784', 
  street_address: '04 Main St',
  city: 'Durham',
  state: 'North Carolina',
  zip: '27701', 
  website_link:'www.antonioimmigration.com'
)





Rating.find_or_create_by(
  law_office: LawOffice.find_by( name: 'Maldonado Immigration'),
  stars: 3,
  comments: "it was nice"
  
)







