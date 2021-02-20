15.times do |i|
    customer = Customer.find_or_initialize_by(email: "customer+man#{i}@gmail.com")
    customer.update!(
       
    )
end

Item.create!(
    [
    {},
    {},
    ]
)

Admin.create(email: 'a@a.com', password: '111111')