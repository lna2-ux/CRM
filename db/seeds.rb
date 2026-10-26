# Clear existing records to avoid duplicates
Customer.destroy_all
AdminUser.destroy_all

# Create default Admin user for Active Admin
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if AdminUser.count == 0

# Create Sample Customers
Customer.create!(
  full_name: "Kyle Geske",
  phone_number: "204-644-4444",
  email_address: "kgeske@rrc.ca",
  notes: "Province: Manitoba"
)

Customer.create!(
  full_name: "Daisy Glutton",
  phone_number: "204-555-1234",
  email_address: "daisy.glutton@mailinator.com",
  notes: "Province: Quebec"
)

Customer.create!(
  full_name: "Wally Glutton",
  phone_number: "204-555-9887",
  email_address: "wally.glutton@mailinator.com",
  notes: "Province: Manitoba"
)

Customer.create!(
  full_name: "Missy Mismatch",
  phone_number: "204-555-2342",
  email_address: "", # Missing email to test the missing_email filter
  notes: "Province: Unknown"
)

puts "Successfully seeded #{Customer.count} customers and admin user!"