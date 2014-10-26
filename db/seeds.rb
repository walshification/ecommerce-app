User.create!([
  {email: "walshification@gmail.com", encrypted_password: "$2a$10$vQK0Lss.JDYRlSB1gMvPDOkoUlLrp1C2McAmYvzwUeUL/vMizwXeO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2014-10-24 02:12:10", last_sign_in_at: "2014-10-24 00:41:04", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Option.create!([
  {name: "red", product_id: 1},
  {name: "blue", product_id: 1},
  {name: "green", product_id: 1}
])
Order.create!([
  {user_id: nil, product_id: nil, quantity: 1, total: nil, confirmation_number: nil},
  {user_id: nil, product_id: nil, quantity: 1, total: nil, confirmation_number: nil},
  {user_id: 1, product_id: 1, quantity: 2, total: "0.99", confirmation_number: nil},
  {user_id: 1, product_id: 1, quantity: 2, total: "0.99", confirmation_number: nil},
  {user_id: 1, product_id: 1, quantity: 5, total: "0.99", confirmation_number: nil},
  {user_id: 1, product_id: 1, quantity: 5, total: nil, confirmation_number: nil},
  {user_id: 1, product_id: 1, quantity: 5, total: nil, confirmation_number: nil},
  {user_id: 1, product_id: 1, quantity: 5, total: nil, confirmation_number: nil},
  {user_id: 1, product_id: 1, quantity: 3, total: nil, confirmation_number: nil},
  {user_id: 1, product_id: 1, quantity: 3, total: nil, confirmation_number: nil},
  {user_id: 1, product_id: 1, quantity: 3, total: "2.97", confirmation_number: nil},
  {user_id: 1, product_id: 1, quantity: 5, total: nil, confirmation_number: nil},
  {user_id: 1, product_id: 1, quantity: 5, total: "5.45", confirmation_number: nil},
  {user_id: 1, product_id: 1, quantity: 3, total: nil, confirmation_number: nil},
  {user_id: 1, product_id: 1, quantity: 3, total: "3.27", confirmation_number: 15},
  {user_id: 1, product_id: 1, quantity: 3, total: "3.27", confirmation_number: 16},
  {user_id: 1, product_id: 5, quantity: 4, total: "4.36", confirmation_number: 17},
  {user_id: 1, product_id: 5, quantity: 4, total: "4.36", confirmation_number: 18},
  {user_id: 1, product_id: 1, quantity: 4, total: "4.36", confirmation_number: 19},
  {user_id: 1, product_id: 5, quantity: 8, total: "8.72", confirmation_number: 20},
  {user_id: 1, product_id: 5, quantity: 8, total: "175.92", confirmation_number: 21},
  {user_id: 1, product_id: 5, quantity: 4, total: "87.96", confirmation_number: 22},
  {user_id: 1, product_id: 5, quantity: 4, total: "87.96", confirmation_number: 23}
])
Product.create!([
  {name: "widget", description: "A sham!", price: "0.99", photo: "http://icons.iconarchive.com/icons/untergunter/leaf-mimes/256/opera-widget-icon.png", vendor_id: 1},
  {name: "whatsit", description: "A power tool for every occasion.", price: "19.99", photo: "http://harrowsmithalmanac.com/wp-content/uploads/2012/10/whatsit-2009-614x380.jpg", vendor_id: 1},
  {name: "whosit", description: "Just the person that you need.", price: "49.99", photo: "http://yourhandymanyork.yolasite.com/resources/handyman%204.jpg", vendor_id: 1},
  {name: "Howsit", description: "The last How-To guide you'll ever need.", price: "59.99", photo: "http://www.mosaik.sg/uploads/1/6/6/0/16606024/910505_orig.jpg", vendor_id: 2},
  {name: "Howitzer", description: "A very big gun.", price: "19.99", photo: "http://visual.merriam-webster.com/images/society/weapons/modern-howitzer.jpg", vendor_id: 2},
  {name: "widget", description: "A sham!", price: "9.0", photo: "http://icons.iconarchive.com/icons/untergunter/leaf-mimes/256/opera-widget-icon.png", vendor_id: nil},
  {name: "whatsit", description: "A power tool for every occasion.", price: "19.99", photo: "http://harrowsmithalmanac.com/wp-content/uploads/2012/10/whatsit-2009-614x380.jpg", vendor_id: nil},
  {name: "whosit", description: "Just the person that you need.", price: "49.99", photo: "http://yourhandymanyork.yolasite.com/resources/handyman%204.jpg", vendor_id: nil}
])
Vendor.create!([
  {name: "WhatsItDoers", email: "what@gmail.com", phone_number: "123-456-7890"},
  {name: "HowsItDoin'", email: "how@gmail.com", phone_number: "987-654-3210"}
])
