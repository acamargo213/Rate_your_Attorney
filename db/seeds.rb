# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Law_office = LawOffice.create(
    
      law_office: 'Camargo and Associates',
      contact_information: 'Office Number: 123-4567 , Address: 00 Main St, Durham, NC 27701 ', 
      website_link: 'www.camargoandassociates.com'
    
)

LawOffice.create(
  
    law_office: 'Cruzaley Law Firm', 
    contact_information: 'Office number: , Address: 01 Main St, Durham, NC 27701', 
    website_link: 'www.cruzaleylawfirm.com'
  
)

LawOffice.create(
  
    law_office: 'Aaron Jimenez Immigration Law Office',
    contact_information: 'Office Number: 919-123-5678 , Address: 02 Main St, Durham, NC 27701',
    website_link: 'www.jimenezimmigration.com'
)

LawOffice.create(
  
  law_office: 'Maldonado Immigration',
  contact_information: 'Office Number: 919-213-3456 , Address: 03 Main St, Durham, NC 27701',
  website_link: 'www.maldonadoimmgration.com'
)

LawOffice.create(
  law_office: 'Antonio Camargo Immigration', 
  contact_information: 'Office Number: 919-758-4784 , Address: 04 Main St, Durham, NC 27701', 
  website_link:'www.antonioimmigration.com'
)