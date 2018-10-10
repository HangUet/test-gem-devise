namespace :sample_data do
  task create: :environment do
    puts "Create Users"
    User.bulk_insert do |worker|
      admin = 1
      user = 0
      password = "123456"
      20.times do |i|
        worker.add(
          username: Faker::Name.name,
          email: "admin_#{i}@email.com",
          phonenumber: Faker::PhoneNumber.phone_number.gsub(/\s/, ""),
          address: Faker::Address.street_address,
          role: admin,
          password: password,
          encrypted_password: BCrypt::Password.create(password))
      end
      20.times do |j|
        worker.add(
          username: Faker::Name.name,
          email: "user_#{j}@email.com",
          phonenumber: Faker::PhoneNumber.phone_number.gsub(/\s/, ""),
          address: Faker::Address.street_address,
          role: user,
          password: password,
          encrypted_password: BCrypt::Password.create(password))
      end
    end
  end
end
