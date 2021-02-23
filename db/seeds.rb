
15.times do |i|
    customer = Customer.find_or_initialize_by(email: "customer+man#{i}@gmail.com")
    customer.update!(
        first_name: "太朗#{i}",
        last_name: "山田#{i}",
        first_name_kana: "たろう#{i}",
        last_name_kana: "やまだ#{i}",
        postal_code: "1234567",
        address: "東京",
        password: "#{i}#{i}#{i}#{i}#{i}#{i}",
    )
end

Admin.create(email: 'a@a.com', password: '111111')