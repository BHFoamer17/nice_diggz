ServiceProvider.create!([
  {email: "harrisbc@gmail.com", encrypted_password: "$2a$10$xujkeWUrOuo0NHyYqe/UAOOgm.C5GdrngrP/vQoBW/tI1uAU2TiiG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 58, current_sign_in_at: "2015-07-16 21:00:06", last_sign_in_at: "2015-06-18 18:01:29", current_sign_in_ip: "::1", last_sign_in_ip: "::1", street_address_2: "Suite 400", company_description: "We are a super awesome company that has a detailed focus on the customer. ", company_email_address: "example@cbre.com", company_phone_number: "555-555-5555", awards: "", last_name: "Harris", cell_number: "916-224-6948", company_name: "CBRE", street_address_1: "311 S. Wacker", city: "Chicago", zip_code: "60606", industry_type_id: 3, industry_experience: "10 Years", certificates: nil, first_name: "Ben", better_business_bureau_rating: "", photo_face: "100_0481.jpg", photo_banner: "100_0034.jpg", website: "www.cbre.com", space_type_id: 1, state: "IL", personal_email_address: "ben.harris@cbre.com", latitude: 41.8774486, longitude: -87.6360871},
  {email: "example4@yahoo.com", encrypted_password: "$2a$10$NZhB/zTO3AjZ74hiHVbxRudGhaAizA.9MyI6jAi84rz44XnHYwJPG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2015-06-07 21:34:11", last_sign_in_at: "2015-06-07 21:28:23", current_sign_in_ip: "::1", last_sign_in_ip: "::1", street_address_2: "Apt. 230", company_description: "", company_email_address: "example4@yahoo.com", company_phone_number: "916-492-6971", awards: "", last_name: "", cell_number: "", company_name: "Builders Inc.", street_address_1: "525 W. Deming Place", city: "Chicago ", zip_code: "60614", industry_type_id: 4, industry_experience: "10 Years", certificates: nil, first_name: "", better_business_bureau_rating: "", photo_face: "IMG_0568.jpg", photo_banner: "IMG_0556.jpg", website: "", space_type_id: 3, state: "IL", personal_email_address: "", latitude: 41.92775899999999, longitude: -87.642923},
  {email: "hawks@gmail.com", encrypted_password: "$2a$10$KGs6KKmTIBH5JQ/DVCL1e.5kD7r8Vtf0T84SPQOadRc88X9zWXa4.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-06-18 18:03:36", last_sign_in_at: "2015-06-18 18:03:36", current_sign_in_ip: "::1", last_sign_in_ip: "::1", street_address_2: "", company_description: "", company_email_address: "", company_phone_number: "", awards: "", last_name: "", cell_number: "", company_name: "Knights Watch", street_address_1: "555 Capital Mall", city: "Sacramento", zip_code: "95814", industry_type_id: 1, industry_experience: "", certificates: nil, first_name: "", better_business_bureau_rating: "", photo_face: "100_0040.jpg", photo_banner: nil, website: "", space_type_id: 1, state: "CA", personal_email_address: "", latitude: 38.578949, longitude: -121.500549}
])
Category.create!([
  {name: "Built Space", photo_id: nil, description_id: nil, description_tokens: nil},
  {name: "Furnished Space", photo_id: nil, description_id: nil, description_tokens: nil},
  {name: "Tenant Representation", photo_id: nil, description_id: nil, description_tokens: nil},
  {name: "Landlord Representation", photo_id: nil, description_id: nil, description_tokens: nil},
  {name: "Moved Tenant", photo_id: nil, description_id: nil, description_tokens: nil},
  {name: "Wired Space", photo_id: nil, description_id: nil, description_tokens: nil},
  {name: "Designed Space", photo_id: nil, description_id: nil, description_tokens: nil},
  {name: "Painted Space", photo_id: nil, description_id: nil, description_tokens: nil},
  {name: "Floored Space", photo_id: nil, description_id: nil, description_tokens: nil},
  {name: "HVAC Maintenance", photo_id: nil, description_id: nil, description_tokens: nil}
])
Description.create!([
  {name: "Office Space", tokens: nil, token: nil},
  {name: "Retail Space", tokens: nil, token: nil},
  {name: "Medical Space", tokens: nil, token: nil},
  {name: "Industrial Space", tokens: nil, token: nil},
  {name: "Modern", tokens: nil, token: nil},
  {name: "Contemporary", tokens: nil, token: nil},
  {name: "Traditional", tokens: nil, token: nil},
  {name: "Reception Area", tokens: nil, token: nil},
  {name: "Conference Room", tokens: nil, token: nil},
  {name: "Kitchen", tokens: nil, token: nil},
  {name: "Offices", tokens: nil, token: nil},
  {name: "Hallway", tokens: nil, token: nil},
  {name: "Tech Space", tokens: nil, token: nil},
  {name: "Attorney Space", tokens: nil, token: nil},
  {name: "Engineering Space", tokens: nil, token: nil}
])
IndustryType.create!([
  {name: "Attorney"},
  {name: "Architect"},
  {name: "Brokerage"},
  {name: "Contractor"},
  {name: "Furniture Vendor"},
  {name: "Interior Designer"},
  {name: "Moving Company"},
  {name: "Office Equipment"},
  {name: "Telecommunications"}
])
Photo.create!([
  {primary: nil, project_id: 0, image: "100_0037.jpg", name: nil, cost: nil},
  {primary: nil, project_id: 0, image: "100_0089.jpg", name: nil, cost: nil},
  {primary: nil, project_id: 9, image: "100_0031.jpg", name: nil, cost: nil},
  {primary: nil, project_id: 2, image: nil, name: nil, cost: nil},
  {primary: nil, project_id: 2, image: "100_0031.jpg", name: nil, cost: nil},
  {primary: nil, project_id: 10, image: "100_0115.jpg", name: nil, cost: nil},
  {primary: nil, project_id: 9, image: "100_0473.jpg", name: nil, cost: nil},
  {primary: nil, project_id: nil, image: "chicago-dusk.jpg", name: nil, cost: nil},
  {primary: nil, project_id: 10, image: "IMG_0600.jpg", name: nil, cost: nil},
  {primary: nil, project_id: 10, image: nil, name: nil, cost: nil},
  {primary: nil, project_id: 9, image: "IMG_0760.jpg", name: nil, cost: nil},
  {primary: nil, project_id: 9, image: "IMG_0592.jpg", name: nil, cost: nil},
  {primary: nil, project_id: 9, image: "IMG_0487.jpg", name: "Tower", cost: nil},
  {primary: nil, project_id: 9, image: "IMG_0488.jpg", name: "Big Ben", cost: nil},
  {primary: nil, project_id: 9, image: "100_0487.jpg", name: "paris", cost: nil},
  {primary: nil, project_id: nil, image: nil, name: "", cost: nil},
  {primary: nil, project_id: 9, image: "100_0031.jpg", name: "Test Primary", cost: nil},
  {primary: true, project_id: 9, image: "100_0032.jpg", name: "Test Primary 2", cost: nil}
])
Project.create!([
  {service_provider_id: nil, name: "Represented XYZ Company", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "Chicago", zip: "60614", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: nil, name: "New Project #2", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: nil, name: "Test Project Number 3", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: nil, name: "Project #5", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: nil, name: "Project #6", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: nil, name: "Project #7", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: 0, name: "Project #8", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: 1, name: "project #9", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "149 Black Powder Circle", street_address_2: "Suite 106", city: "Folsom", zip: "95630", state: "CA", description: "We represented a large tenant of 100,000 sf.  This was a unique tech space requirement.  We are awesome.", completed_on: nil, cost_amount_description: "", cost: "$5000", tag_list: nil},
  {service_provider_id: 1, name: "Test Project #12", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: "", tag_list: nil},
  {service_provider_id: 21, name: "", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: 21, name: "", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: 21, name: "", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: "", tag_list: nil},
  {service_provider_id: 21, name: "Test Project ", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: 21, name: "test 2", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: 21, name: "test 2", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: 21, name: "test 3", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: 21, name: "test 4", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil},
  {service_provider_id: 21, name: "Test 5", space_type_id: 1, category_id: nil, cost_amount: nil, street_address_1: "", street_address_2: "", city: "", zip: "", state: "", description: "", completed_on: nil, cost_amount_description: "", cost: nil, tag_list: nil}
])
SpaceType.create!([
  {name: "Office"},
  {name: "Retail"},
  {name: "Industrial"},
  {name: "Medical Office"},
  {name: "Multi-Family"}
])
