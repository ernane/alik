# encoding: UTF-8

AdminUser.delete_all

AdminUser.create({
  :id => 1,
  :email => "admin@example.com",
  :encrypted_password => "$2a$10$r6L62AzWpo6qK7odnBfEauQxQtHPzDX8Y4JV3f09IWfQJu/JOJJEu",
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 8,
  :current_sign_in_at => "Fri, 21 Sep 2012 23:16:57 BRT -03:00",
  :last_sign_in_at =>    "Fri, 21 Sep 2012 17:44:40 BRT -03:00",
  :current_sign_in_ip => "187.122.244.129",                  
  :last_sign_in_ip =>    "189.2.252.154",                    
  :created_at =>         "Sat, 11 Aug 2012 13:56:43 BRT -03:00",
  :updated_at =>         "Fri, 21 Sep 2012 23:16:57 BRT -03:00"
})

AdminUser.create({
  :id => 2,
  :email => "wvfigueiredo@uol.com.br",
  :encrypted_password => "$2a$10$SpJCON2Rf1AbNo5pPwSuJeGLAaVjWNa3h6mfkstANOCN2p34.EsqK",
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 63,
  :current_sign_in_at => "Mon, 08 Oct 2012 10:07:26 BRT -03:00",
  :last_sign_in_at =>    "Sat, 06 Oct 2012 11:49:45 BRT -03:00",
  :current_sign_in_ip => "189.82.83.15",                     
  :last_sign_in_ip =>    "189.81.66.102",                    
  :created_at =>         "Sat, 11 Aug 2012 14:00:13 BRT -03:00",
  :updated_at =>         "Mon, 08 Oct 2012 10:07:26 BRT -03:00"
})