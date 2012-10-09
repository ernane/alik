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

#======================================================================================================

User.delete_all

User.create({
  :id => 2,
  :email => "danielfeiov@gmail.com",
  :encrypted_password => "$2a$10$HCW6YM/XcKlPdJdOCrhHgOKQfmHNm1q5Fuf0gJaHUrbE750iIKTVK",
  :username => "Daniel Feio da Veiga",
  :city_id => 2465,
  :state_id => 14,
  :fields => "Cívil e Imobiliária",
  :portifolio_of_oab => "14.446",
  :phone => "(91) 8117-7947",
  :about => "Advogado militante.",
  :avatar_url => "",
  :teaching => 1,
  :professional => 5,
  :books_published => 1,
  :articles_published => 1,
  :postgraduate => false,
  :doctorate_in_law => false,
  :master_of_law => false,
  :postgraduate_in_law => false,
  :foreign_laguage => false,
  :terms_of_use => nil,
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 11,
  :current_sign_in_at => "Thu, 13 Sep 2012 20:08:28 BRT -03:00",
  :last_sign_in_at => "Wed, 12 Sep 2012 21:32:17 BRT -03:00",
  :current_sign_in_ip => "189.82.235.186",
  :last_sign_in_ip => "189.82.223.144",
  :created_at => "Fri, 10 Aug 2012 18:30:45 BRT -03:00",
  :updated_at => "Thu, 13 Sep 2012 20:08:28 BRT -03:00",
  :featured => true
})

User.create({
  :id => 4,
  :email => "contato.alik@gmail.com",
  :encrypted_password => "$2a$10$h1MkLOu/lSerW8lSEOhcT.oM9z835kHYRIwCQ2ghzK7Rgnm/QegMm",
  :username => "Roberto Moreira",
  :city_id => nil,
  :state_id => 19,
  :fields => "Civil e Trabalhist",
  :portifolio_of_oab => "11111",
  :phone => "(21) 6596-2335",
  :about => "Sou advogado especialista em Direito Civil e Trabalhista.",
  :avatar_url => "http://www.gravatar.com/avatar/26dbc83d8dcaec536d28737d33edaa17.png",
  :teaching => 5,
  :professional => 10,
  :books_published => 2,
  :articles_published => 3,
  :postgraduate => false,
  :doctorate_in_law => false,
  :master_of_law => false,
  :postgraduate_in_law => true,
  :foreign_laguage => true,
  :terms_of_use => nil,
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 14,
  :current_sign_in_at =>     "Thu, 20 Sep 2012 21:35:16 BRT -03:00",
  :last_sign_in_at =>        "Thu, 20 Sep 2012 16:14:49 BRT -03:00",
  :current_sign_in_ip =>     "189.82.141.153",                    
  :last_sign_in_ip =>        "187.42.186.180",                    
  :created_at =>             "Wed, 15 Aug 2012 11:57:50 BRT -03:00",
  :updated_at =>             "Thu, 20 Sep 2012 21:35:16 BRT -03:00",
  :featured => false

})

User.create({
  :id => 15,
  :email => "alcidesbulhoes@hotmail.com",
  :encrypted_password => "$2a$10$nE3WRik4CbAxDKWU2sOs/.b94GIxh5gxP5AzYc.XNW0MUVSOKYjmi",
  :username => "ALCIDES BULHÕES",
  :city_id => nil,
  :state_id => nil,
  :fields => "",
  :portifolio_of_oab => "",
  :phone => "",
  :about => "Advogado, especializado em Direito Público e Processual. Bacharel em Direito pela Universidade Estadual de Santa Cruz - UESC, Especializando em Direito Costitucional Aplicado pela Faculdade Damásio de Jesus, Colunista-representante do Periódico É direito; Advogado do Partido dos Trabalhadores na cidade de Valença-BA.",
  :avatar_url => "",
  :teaching => 0,
  :professional => 0,
  :books_published => 0,
  :articles_published => 0,
  :postgraduate => false,
  :doctorate_in_law => false,
  :master_of_law => false,
  :postgraduate_in_law => false,
  :foreign_laguage => false,
  :terms_of_use => nil,
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 1,
  :current_sign_in_at =>   "Thu, 13 Sep 2012 15:11:50 BRT -03:00",
  :last_sign_in_at =>      "Thu, 13 Sep 2012 15:11:50 BRT -03:00",
  :current_sign_in_ip =>   "201.8.70.41",                       
  :last_sign_in_ip =>      "201.8.70.41",                       
  :created_at =>           "Thu, 13 Sep 2012 15:11:50 BRT -03:00",
  :updated_at =>           "Thu, 13 Sep 2012 15:11:50 BRT -03:00",
  :featured => false

})

User.create({
  :id => 16,
  :email => "alexandrecguimaraes@me.com",
  :encrypted_password => "$2a$10$nPOALm.TUUYyo451guy53O/V33iwzQQSJA5jaBRxEaR8YBNJhp7eW",
  :username => "Alexandre Costa Cardoso Guimarães",
  :city_id => 345,
  :state_id => 5,
  :fields => "Cível / Trabalhista / Tributário",
  :portifolio_of_oab => "OAB/BA 32.884",
  :phone => "(77) 3452-1689",
  :about => "",
  :avatar_url => "",
  :teaching => 0,
  :professional => 2,
  :books_published => 0,
  :articles_published => 0,
  :postgraduate => false,
  :doctorate_in_law => false,
  :master_of_law => false,
  :postgraduate_in_law => true,
  :foreign_laguage => false,
  :terms_of_use => nil,
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 1,
  :current_sign_in_at =>     "Thu, 13 Sep 2012 15:30:21 BRT -03:00",
  :last_sign_in_at =>        "Thu, 13 Sep 2012 15:30:21 BRT -03:00",
  :current_sign_in_ip =>     "177.44.128.114",                    
  :last_sign_in_ip =>        "177.44.128.114",                    
  :created_at =>             "Thu, 13 Sep 2012 15:30:21 BRT -03:00",
  :updated_at =>             "Thu, 13 Sep 2012 15:32:47 BRT -03:00",
  :featured => false

})

User.create({
  :id => 17,
  :email => "rosepinheiro@terra.com.br",
  :encrypted_password => "$2a$10$SlB.V1y2s1iAYgYQ.4/jleZWMdxpzfdcxkaZYYSPfsb7wFj0yLBcG",
  :username => "Rosangela Pinheiro",
  :city_id => nil,
  :state_id => nil,
  :fields => "",
  :portifolio_of_oab => "",
  :phone => "",
  :about => "Atuo nas seguintes áreas: Trabalhista, Previdenciário, Cível e Consumidor.",
  :avatar_url => "",
  :teaching => 0,
  :professional => 0,
  :books_published => 0,
  :articles_published => 0,
  :postgraduate => false,
  :doctorate_in_law => false,
  :master_of_law => false,
  :postgraduate_in_law => false,
  :foreign_laguage => false,
  :terms_of_use => nil,
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 1,
  :current_sign_in_at =>   "Thu, 13 Sep 2012 16:02:27 BRT -03:00",
  :last_sign_in_at =>      "Thu, 13 Sep 2012 16:02:27 BRT -03:00",
  :current_sign_in_ip =>   "177.35.118.155",                    
  :last_sign_in_ip =>      "177.35.118.155",                    
  :created_at =>           "Thu, 13 Sep 2012 16:02:27 BRT -03:00",
  :updated_at =>           "Thu, 13 Sep 2012 16:02:27 BRT -03:00",
  :featured => false
})
        
User.create({
  :id => 14,
  :email => "lucianofrota@yahoo.com.br",
  :encrypted_password => "$2a$10$DoLbgrPcwFHCb.bJlxjG1eyTWswbmwCMBCxrTtDxrSjiZKmj/UymS",
  :username => "Luciano Leite Barbosa da Frota",
  :city_id => 678,
  :state_id => 6,
  :fields => "Empresarial e tributário, consumidor, Indenizações, Família, inventários, trabalhista, previdenciário, Imobiliário e ambiental.",
  :portifolio_of_oab => "22237",
  :phone => "(85) 8732-4696",
  :about => "Meu nome é Luciano, tenho 29 anos, sou advogado(OAB-CE 22237) no estado do Ceará  sócio-proprietário da FROTA E AGUIAR ADVOCACIA desde 2009.\r\n\r\n\r\n\r\n\r\n",
  :avatar_url => "",
  :teaching => 0,
  :professional => 4,
  :books_published => 0,
  :articles_published => 0,
  :postgraduate => false,
  :doctorate_in_law => false,
  :master_of_law => false,
  :postgraduate_in_law => true,
  :foreign_laguage => true,
  :terms_of_use => nil,
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 4,
  :current_sign_in_at =>     "Sat, 15 Sep 2012 16:09:32 BRT -03:00",
  :last_sign_in_at =>        "Fri, 14 Sep 2012 14:24:23 BRT -03:00",
  :current_sign_in_ip =>     "177.135.54.12",                     
  :last_sign_in_ip =>        "186.213.20.15",                     
  :created_at =>             "Thu, 13 Sep 2012 13:19:50 BRT -03:00",
  :updated_at =>             "Sat, 15 Sep 2012 16:09:32 BRT -03:00",
  :featured => false

})

User.create({
  :id => 18,
  :email => "aristotelestote_@hotmail.com",
  :encrypted_password => "$2a$10$riHwwgkqmPQnnGgP80bRd.Oq3rqEHePcLrtVaAa.47Iya8mJZBOUG",
  :username => "Aristóteles Duarte Ribeiro",
  :city_id => nil,
  :state_id => nil,
  :fields => "",
  :portifolio_of_oab => "",
  :phone => "",
  :about => "Advogado. Graduado em Direito pela Universidade Federal do Maranhão-UFMA e pós graduando em Direito Processual Civil pela Anhanguera Uniderp",
  :avatar_url => "",
  :teaching => 0,
  :professional => 0,
  :books_published => 0,
  :articles_published => 0,
  :postgraduate => false,
  :doctorate_in_law => false,
  :master_of_law => false,
  :postgraduate_in_law => false,
  :foreign_laguage => false,
  :terms_of_use => nil,
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 1,
  :current_sign_in_at =>     "Thu, 13 Sep 2012 16:12:17 BRT -03:00",
  :last_sign_in_at =>        "Thu, 13 Sep 2012 16:12:17 BRT -03:00",
  :current_sign_in_ip =>     "187.41.242.227",                   
  :last_sign_in_ip =>        "187.41.242.227",                   
  :created_at =>             "Thu, 13 Sep 2012 16:12:17 BRT -03:00",
  :updated_at =>             "Thu, 13 Sep 2012 16:13:11 BRT -03:00",
  :featured => false

})

User.create({
  :id => 19,
  :email => "carlos.adv@dr.com",
  :encrypted_password => "$2a$10$WDfLSjs0nyGrMxZxgFq0ium/SADtqGdwnt2b10txOeLcF0UmwgsBq",
  :username => "Carlos Roberto de Souza Júnior",
  :city_id => nil,
  :state_id => nil,
  :fields => "",
  :portifolio_of_oab => "",
  :phone => "",
  :about => "Advogado. Graduado na UNIDERP - Anhanguera, em 2010. Pós-graduando em Direito Processual Civil no Complexo Educacional Damásio de Jesus. \r\nAtuação nas searas cível, contratual e empresarial, trabalhista, imobiliária, previdenciária, tributaria e consumerista.",
  :avatar_url => "",
  :teaching => 0,
  :professional => 0,
  :books_published => 0,
  :articles_published => 0,
  :postgraduate => false,
  :doctorate_in_law => false,
  :master_of_law => false,
  :postgraduate_in_law => false,
  :foreign_laguage => false,
  :terms_of_use => nil,
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 1,
  :current_sign_in_at =>     "Thu, 13 Sep 2012 18:42:56 BRT -03:00",
  :last_sign_in_at =>        "Thu, 13 Sep 2012 18:42:56 BRT -03:00",
  :current_sign_in_ip =>     "177.3.235.86",                      
  :last_sign_in_ip =>        "177.3.235.86",                      
  :created_at =>             "Thu, 13 Sep 2012 18:42:56 BRT -03:00",
  :updated_at =>             "Thu, 13 Sep 2012 18:42:56 BRT -03:00",
  :featured => false

})

User.create({
  :id => 20,
  :email => "adoniasjr10@hotmail.com",
  :encrypted_password => "$2a$10$wPucD30oR/rGzcmzH9Tyv.G78Lc5CJWP4YGrkkATLxgOeOJxWzXPu",
  :username => "Adonias Júnior",
  :city_id => 270,
  :state_id => 5,
  :fields => "",
  :portifolio_of_oab => "",
  :phone => "",
  :about => "",
  :avatar_url => "",
  :teaching => 0,
  :professional => 0,
  :books_published => 0,
  :articles_published => 0,
  :postgraduate => false,
  :doctorate_in_law => false,
  :master_of_law => false,
  :postgraduate_in_law => false,
  :foreign_laguage => false,
  :terms_of_use => nil,
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 1,
  :current_sign_in_at =>  "Fri, 14 Sep 2012 19:29:51 BRT -03:00",
  :last_sign_in_at =>     "Fri, 14 Sep 2012 19:29:51 BRT -03:00",
  :current_sign_in_ip =>  "201.50.204.239",                    
  :last_sign_in_ip =>     "201.50.204.239",                    
  :created_at =>          "Fri, 14 Sep 2012 19:29:50 BRT -03:00",
  :updated_at =>          "Fri, 14 Sep 2012 19:54:41 BRT -03:00",
  :featured => false

})

User.create({
  :id => 22,
  :email => "renatamcjg@terra.com.br",
  :encrypted_password => "$2a$10$Bk4aTP.NPhLlzILBjpCmPeovQztfCql.jEmFWpsAVlKbubnWpMC2G",
  :username => "renata",
  :city_id => nil,
  :state_id => nil,
  :fields => "",
  :portifolio_of_oab => "",
  :phone => "",
  :about => "",
  :avatar_url => "",
  :teaching => 0,
  :professional => 0,
  :books_published => 0,
  :articles_published => 0,
  :postgraduate => false,
  :doctorate_in_law => false,
  :master_of_law => false,
  :postgraduate_in_law => false,
  :foreign_laguage => false,
  :terms_of_use => nil,
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 1,
  :current_sign_in_at =>  "Fri, 21 Sep 2012 11:51:46 BRT -03:00",
  :last_sign_in_at =>     "Fri, 21 Sep 2012 11:51:46 BRT -03:00",
  :current_sign_in_ip =>  "187.75.248.119",                    
  :last_sign_in_ip =>     "187.75.248.119",                    
  :created_at =>          "Fri, 21 Sep 2012 11:51:46 BRT -03:00",
  :updated_at =>          "Fri, 21 Sep 2012 11:51:46 BRT -03:00",
  :featured => false
})

User.create({
  :id => 28,
  :email => "leo_freitas26@yahoo.com.br",
  :encrypted_password => "$2a$10$VCNzSqGDE3Rx1J7mGmpZCuexgunVUovTj.XycqWo21M7cXZeQCnyi",
  :username => "Leonardo Souza de Freitas",
  :city_id => 678,
  :state_id => 6,
  :fields => "Direito tributário",
  :portifolio_of_oab => "25332",
  :phone => "(85) 9162-8118",
  :about => "",
  :avatar_url => "",
  :teaching => 0,
  :professional => 1,
  :books_published => 0,
  :articles_published => 0,
  :postgraduate => false,
  :doctorate_in_law => false,
  :master_of_law => false,
  :postgraduate_in_law => false,
  :foreign_laguage => false,
  :terms_of_use => nil,
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 1,
  :current_sign_in_at =>   "Fri, 28 Sep 2012 11:27:07 BRT -03:00",
  :last_sign_in_at =>      "Fri, 28 Sep 2012 11:27:07 BRT -03:00",
  :current_sign_in_ip =>   "189.84.112.234",                    
  :last_sign_in_ip =>      "189.84.112.234",                    
  :created_at =>           "Fri, 28 Sep 2012 11:27:07 BRT -03:00",
  :updated_at =>           "Fri, 28 Sep 2012 11:32:53 BRT -03:00",
  :featured => false
})

User.create({                     
   :id => 34,
  :email => "cleide.valla@gmail.com",
  :encrypted_password => "$2a$10$VAvj6YVdwxs/oEFtKdXaN.sfQmWjss0tfVE0kM7EC9zywTmzGtlqe",
  :username => "Cleide Valla",
  :city_id => nil,
  :state_id => nil,
  :fields => "",
  :portifolio_of_oab => "",
  :phone => "",
  :about => "Advogada especializada em direito de família.",
  :avatar_url => "",
  :teaching => 0,
  :professional => 0,
  :books_published => 0,
  :articles_published => 0,
  :postgraduate => false,
  :doctorate_in_law => false,
  :master_of_law => false,
  :postgraduate_in_law => false,
  :foreign_laguage => false,
  :terms_of_use => nil,
  :reset_password_token => nil,
  :reset_password_sent_at => nil,
  :remember_created_at => nil,
  :sign_in_count => 1,
  :current_sign_in_at =>   "Mon, 08 Oct 2012 15:09:06 BRT -03:00",
  :last_sign_in_at =>      "Mon, 08 Oct 2012 15:09:06 BRT -03:00",
  :current_sign_in_ip =>   "201.81.101.237",                    
  :last_sign_in_ip =>      "201.81.101.237",                    
  :created_at =>           "Mon, 08 Oct 2012 15:09:05 BRT -03:00",
  :updated_at =>           "Mon, 08 Oct 2012 15:09:06 BRT -03:00",
  :featured => false
})                      


Question.delete_all

Question.create({
    answers_count:  1,
    available:      true,
    city_id:        660,
    created_at:     "2012-08-10T10:43:52-03:00",
    description:    "Gostaria que algum companheiro me ajudasse diante desta situação que irei descrever;\r\ncomprei um carro no valor 37,000 um colega de trabalho me ofereceu um cheque para da de entrada no valor 11,500, e em troca eu deixaria meu carro para ele vender no valor de 20,000, quando ele vendesse tiraria o valor do cheque 11,500 e passaria o restante no valor 8,500, então agora descrevo o que aconteceu ele vendeu o carro cobriu o cheque me passou 3,000 com argumento de 15 dias me passar o restante 5,500, passado os 15 dias, pediu um prazo mais 30 dias, passou os 30 dias, ele chegou pra mim e disse que teve outros problemas financeiro e teve que utiliza o dinheiro que deveria me passar, diante desta situação o mesmo me passou que iria pedi conta na empresa que trabalha para me pagar, mais infelizmente o mesmo recebeu dinheiro e outras divida e não me pagou, então conversei com ele novamente e mesmo disse que irá me pagar mais não fala em data o que posso fazer neste caso? lembrando que o mesmo possui um carro( detalhe não tenho nada que confirme a divida no papel) o que devo fazer ? \r\nmuito obrigado sua ajuda será extramente importante.",
    hashed_code:      "dbe960491264d8b5189838c587932883e18542cf9f2741b3f333db044be11a53f41bb1f4be37b04b",
    id:              1,
    requester_email: "rodrigues.marcio71@yahoo.com.br",
    requester_name:  "Marcio Rodrigues",
    requester_phone: "(85) 8808-9448",
    state_id:        6,
    title:           "cobrança divida",
    updated_at:      "2012-08-10T10:43:52-03:00"
})

Question.create({
    answers_count:  1,
    available:      true,
    city_id:        1792,
    created_at:     "2012-08-14T13:03:26-03:00",
    description:    "A ex- amante de meu marido me perseguiu por três meses através de msgs de celular e me ofendeu muito. Ela inclusive ameaçou \"acabar comigo\" em uma mensagem que mandou para meu marido, e ele disse que iria matá-la. Ela fez o B.O. e não representou. Tempos depois, essa mesma mulher os viu na rua, me agrediu com um tapa e meu marido a empurrou para que ela não me atingisse. Ela é segurança e estava com uma bolsa, e meu marido pensou que ela estava armada. Ela fez novamente o B.O. de agressão contra ele e eu também fiz. Eu representei o B.O. e ela não. NO dia da conciliação, ela apareceu com um advogado dizendo que não aceitava conciliar e que deixaria o processo correr, e o advogado disse que, munido desses dois B.Os que ela fez, REVERTERIA o processo e provaria que ela não é agressora e sim agredida. Quais são as chances que nós temos de ganhar o processo? Meu marido pode alegar legítima defesa? O juiz pode considerar o argumento dela pertinente, mesmo sem a representação dos boletins de ocorrência? Aguardo resposta!",
    hashed_code:     "943c53f312e605dbbbe11af3fad9e79bd478169b4f01d8a0608f92d69b1eb695cd23a69413168337",
    id:              4,
    requester_email: "vanessaolivufjf@yahoo.com.br",
    requester_name:  "Vanessa",
    requester_phone: "3288436537",
    state_id:        11,
    title:           "agressão",
    updated_at:      "2012-08-14T13:03:26-03:00"
})


Question.create({
answers_count: 1,
available: true,
city_id: 5389,
created_at: "2012-08-15T16:50:36-03:00",
description: "Boa tarde ! Bom eu me envolvi em um atropelamento,na data de 08/08/12, onde eu conduzia meu veiculo pela via e uma menina, ao atravessar a via, colidiu na parte lateral direita do meu veiculo, vindo a cair no chão. Parei meu veiculo imediatamente, visualizei pequenas escoriações, mas a menina estava sentindo dores. Então a coloquei no meu carro, com intenção de ir para um hospital, mas passei na casa da genitora da mesma para falar do ocorrido, onde a genitora colocou a menina em seu veiculo e a socorreu. \r\nNa data do acidente não foi feito ocorrência, porem hoje 15/08/12, em contato com a genitora, ela disse que precisa da ocorrência, pois a menina fraturou o femur, e a perna. E também alegou, sobre minha conduta de ter socorrido, pois eu tinha que ter chamado a ambulância e talvez minha conduta tenha piorado a saúde de sua filha.\r\nDe acordo com o narrado o que eu poderei responder judicialmente, ou criminalmente, ou civilmente",
hashed_code: "45a603230a5120b8f82ab29213fcd7470d8f602a481611761f9e5bae962ba5e99320c1148ef4e13d",
id: 5,
requester_email: "univertorres@hotmail.com",
requester_name: "Claudio Torres",
requester_phone: "(11) 6464-7971",
state_id: 26,
title: "Atropelamento",
updated_at: "2012-08-15T16:50:36-03:00"
})

Question.create({
answers_count: 1,
available: true,
city_id: 5345,
created_at: "2012-08-21T09:45:18-03:00",
description: "tenho uma amiga que morou com um sujeito por 16 anos ela é muito ingenua e inocente, eles tiveram um filho que hoje tem 11 anos eles se separaram , mas ele não para de infernizar a vida dela, eu prorpriamente testemunhei agressao fisica, e principalmente verbal, o interesse dele é na casa dela que é prorpria herança do falecido marido, minha pergunta é a seguinte: posso fazer um mandado de cautela contra ele? como afastar ele de vez da vida dela ,porque ele se acha no direito de entrar e sair a hora que quiser além de ser ma influencia para o proprio filho e muito mais coisas que por aqui não daria pra contar tudo.\r\nagradeço pela atenção dispensada e agradeceria muito se pudesse me dar uma resposta com um pouco de urgencia",
hashed_code: "7fffffebeb08df248bdc865e2d0e6629bbe6fbc93ccda3fa89180f8fac3656ceb5d5c037d96d2b73",
id: 10,
requester_email: "jocimara_ester@hotmail.com",
requester_name: "jocimara ester de godoy",
requester_phone: "(11) 9476-1902",
state_id: 26,
title: "agressao moral",
updated_at: "2012-08-21T09:45:18-03:00"
})

Question.create({
answers_count: 1,
available: true,
city_id: 3643,
created_at: "2012-08-22T16:26:53-03:00",
description: "ola meu nome e erico espero um contato seu urgente sobre\r\n\r\n\r\ntrabalhei numa empresa por 6 meses pedi demissao  nao compri o aviso previo todo falto apenas 8 dias e pedi pra sair \r\n\r\nissu foi iniciei 12 de janeiro de 2012  e pedi demissao 11 de julho de 2012   e hoje sao 22/07/2012 e ate agora minha recisao nao foram pagas nadinha nem meus dias trabalhados do aviso previo gostaria de saber o que fazer me ajude por favor aguardo resposta  urgente!",
hashed_code: "506e1897608fad9a764d5eb671a5dd43716be91ea566f5b2d4ccf1654a49ffe576d88a2472118e76",
id: 12,
requester_email: "ericodark@hotmail.com",
requester_name: "erico",
requester_phone: "(21) 9902-0286",
state_id: 19,
title: "Recisao nao paga",
updated_at: "2012-08-22T16:26:53-03:00"
})

Question.create({
answers_count: 2,
available: true,
city_id: 3430,
created_at: "2012-08-22T15:44:28-03:00",
description: "Uma procuracao que esta em meu nome dando poderes a outra pessoa foi usada para uma transacao da qual nao concordo, um imovel que esta em meu nome esta sendo vendido por meio dessa procuracao, o que posso fazer a respeito dessa situacao?",
hashed_code: "69a59298699fe45bf5da2d196831b0fecee3befae3f7579a9cd4eeefb4e28430cd5400c94b82bee8",
id: 11,
requester_email: "thiagobfontoura@r7.com",
requester_name: "Thiago Fontoura",
requester_phone: "(44) 3025-6462",
state_id: 18,
title: "Procuracao",
updated_at: "2012-08-22T15:44:28-03:00"
})

Question.create({
answers_count: 1,
available: true,
city_id: 3686,
created_at: "2012-08-27T21:21:26-03:00",
description: "Boa noite.\r\n\r\nPrimeiramente agradeço a oportunidade deste contato.\r\nOutrossim, gostaria de tirar uma dúvida:\r\n\r\nMeu pai se separou de minha mãe e fez um acordo (separação amigável em cartório), deixando para ela 30% de seu salário como pensão.\r\nEle é aposentado como gráfico, e ganha cerca de R$ 3.000,00 pelo INSS. Acabou se casando com uma outra mulher, que também é aposentada pelo setor público.\r\nA minha dúvida é: Caso ele venha a falecer, como ficaria o salário dele ? Os 70% passariam para a atual esposa dele ou seria divido em 50 % para as duas ?\r\n\r\nGostaria muito de sua ajuda.\r\nObrigado.\r\nUbirajara.",
hashed_code: "7e45554ccc8788826355b4cfd6b67b08cf66738b0d88aecc457777efa60f417c5dc4cc62beadf5ea",
id: 13,
requester_email: "jesuscheint@gmail.com",
requester_name: "Ubirajara",
requester_phone: "(21) 8474-7906",
state_id: 19,
title: "Pensão",
updated_at: "2012-08-27T21:21:26-03:00"
})

Question.create({
answers_count: 1,
available: true,
city_id: 5389,
created_at: "2012-08-28T12:11:28-03:00",
description: "Olá amigo tenho um contrato com a construtora pdg de um apto na planta, porem o valor era de 130.000,00 quando fiz, sendo que 30.000,00 eu pago entre intermediárias e FGTS e o saldo de 100.000,00 corrigido pelo INCC é de 113.000,00 porém a contrutora me chamando para assinar o financiamento me disse que a caixa avaliou o apto em 154.000,00 e portanto eu terei que financiar este valor, isto está correto? é a caixa que determina qto vale o apto? e o que já paguei? como fica? Obrigado.",
hashed_code: "73a216ea8ef8182f116ff28ab4589c735bd574120e61c042480b02c354102676e7569b0e4f17854b",
id: 14,
requester_email: "rg_naldo@hotmail.com",
requester_name: "Reginaldo",
requester_phone: "(11) 2036-1125",
state_id: 26,
title: "valor contrato contrutora pdg está correto?",
updated_at: "2012-08-28T12:11:28-03:00"
})

Question.create({
answers_count: 1,
available: true,
city_id: 1384,
created_at: "2012-08-28T15:34:54-03:00",
description: "construi um muro de divisa de 1 galpão,  de comum acordo com o vizinho, a obra ja terminou ha 2 meses , sendo que paguei sózinho esperando o reembolso dele conforme o combinado, mas estou tendo dificuldade p/ receber a parte que lhe cabe, como devo proceder, entro na justiça? Pequenas causas ou advogado?\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n",
hashed_code: "a8fa99c1bc89a92fd49da3af7cd73f926fcb70d3c26b7aeb46bafba0d1dde4bbc276b6b82e68d9bb",
id: 15,
requester_email: "monicasfranco@hotmail.com",
requester_name: "monica",
requester_phone: "(35) 9926-9092",
state_id: 11,
title: "construção de muro",
updated_at: "2012-08-28T15:34:54-03:00"
})

Question.create({
answers_count: 1,
available: true,
city_id: 3686,
created_at: "2012-08-28T18:40:55-03:00",
description: "Boa Noite.\r\nPrimeiramente gostaria de agradece a oportunidade.\r\nMinha dúvida é a seguinte: Quitei meu apartamento junto ao Banco (financiamento). Levei a carta do banco para o RGI (me mandaram fazer isso) para dar baixa e pedir uma tal \"certidão de onus reais\"... não sei pra que serve...que vi que depois que recebi a certidão, o imóvel estava com meu nome. Por fim,  sempre soube que existiria uma tal de escritura... isso vale para apartamento ? O que devo fazer para passar realmente o apartamento para o meu nome e para eu vender no futuro ? Devo fazer algo mais ? Muito obrigado !",
hashed_code: "6ba3de78f966095c68b6c537b1d089e7bd94aa4864e92d957af0170e13e528c0d446d901f64495c8",
id: 16,
requester_email: "jesuscheint@gmail.com",
requester_name: "Ubirajara",
requester_phone: "(21) 8474-7906",
state_id: 19,
title: "Escritura de Imóvel",
updated_at: "2012-08-28T18:40:55-03:00"
})

Question.create({
answers_count: 1,
available: true,
city_id: 3312,
created_at: "2012-08-29T23:20:27-03:00",
description: "estou me separando,meu casamento e em regime parcial de bens,mas estou fazendo inventario da casa de meus pais,(minha mae faleceu antes de eu me casar)meu marido tem direito a esse dinheiro ?",
hashed_code: "a54ee93ccd28cae09129e3ea64595be8f69045fe69cd445b908f5e0dc918a2685f092d6b4a198b53",
id: 18,
requester_email: "loreny_91@hotmail.com",
requester_name: "LILIA",
requester_phone: "(41) 9983-5868",
state_id: 18,
title: "familia",
updated_at: "2012-08-29T23:20:27-03:00"
})

Question.create({
answers_count: 1,
available: true,
city_id: 438,
created_at: "2012-08-29T12:11:02-03:00",
description: "Eu fui nomeado através de concurso público para prefeitura municipal para o cargo de agente administrativo. Só que eu fui designado para trabalhar em uma escola do ensino fundamental vinculada a secretaria de educação do município onde a mesma dispõe de um plano de carreira para os profissionais em educação só que a secretaria alega que nos prestamos concurso para agente administrativo e que no edital do concurso não vem especificando que é agente administrativo educacional e que nesse caso agente não está inserido no plano de carreira dos profissionais em educação que, no entanto estamos vinculado ao estatuto do servidor público municipal. Eu gostaria de saber se existe alguma lei que nos ampare e nos legitime na educação haja visto que temos 5(cinco)  anos atuando na educação como agente administrativo.",
hashed_code: "a653c151cddaf1d7b2b1b569e7cc9233601d7f569b7b710f6e379e53be4e6c8f5f2af7690879c039",
id: 17,
requester_email: "marcosmacedo2@gmail.com",
requester_name: "Marcos",
requester_phone: "(74) 9996-6293",
state_id: 5,
title: "Dúvida relacionada ao direito administrativo.",
updated_at: "2012-08-29T12:11:02-03:00"
})

Question.create({
answers_count: 1,
available: true,
city_id: 1911,
created_at: "2012-09-06T17:41:46-03:00",
description: "Oi gostaria de entrar com uma ação de impedimento contra meu  pai, ele é aposentado por invalidez por ser louco. Minha mae faleceu vai fazer um ano dia 25/09/2012 e ele depois disso nao cuidou mais de nos deixando minha irma mais nova morar com minha irma. eu sou deficiente visual  e ele tambem me abandonou, e agora ele quer tirar as coisas de dentro da minha casa  que ele conquistou com minha mae pra levar pra outra casa pra morar com outra mulher sendo que nem inventario ele fez. eu queria saber se posso entrar com uma ação de impedimento e  abandono de incapaz. agradeço se vocês responderem minha pergunta. desde ja muito obrigada. ",
hashed_code: "2bddbf0ea6aee832afb6c7bbd41352f94e9a6fec6e92d433d36b717fb333695e2f99d23854cf2777",
id: 19,
requester_email: "jeniferstefania@hotmail.com",
requester_name: "Jênifer Estefânia Silva",
requester_phone: "(31) 9153-7052",
state_id: 11,
title: "Ação de impedimento ",
updated_at: "2012-09-06T17:41:46-03:00"
})

Question.create({
answers_count: 1,
available: true,
city_id: 3686,
created_at: "2012-09-13T16:08:55-03:00",
description: "Trabalhei em uma empresa durante 39 meses,com o salário de R$680,00\r\nreajustado,meu fgts tem o saldo de R$ 2.292,27 atualizado em 15/08/2012 e total a receber R$ 1.384,32,sendo que minha demissão sem justa causa foi em 19/08/2012.\r\nEssa conta está certa?\r\nDesde já obrigada!",
hashed_code: "8bd8cd05475fbdf8d6bc99da55be558b18e17ce77a032ecdaf84aaf0d8db7157b2eac9e3dcb66941",
id: 21,
requester_email: "rosaflor.oli@hotmail.com",
requester_name: "Rosangela",
requester_phone: "(21) 9156-8820",
state_id: 19,
title: "FGTS,ESTÁ CORRETO?",
updated_at: "2012-09-13T16:08:55-03:00"
})

Question.create({
answers_count: 2,
available: true,
city_id: 19,
created_at: "2012-09-11T11:28:05-03:00",
description: " Realizei uma compra online na sexta-feira (31/09), paguei o produto na segunda-feria (03/09) e no mesmo dia recebei a confirmação de pagamento, o produto deveria ser despachado dia seguinte após confirmação de pagamento, mandei e-mail ao site perguntando sobre o produto dia (05/09), porém me responderam alegando que o produto está com valor errado e não iriam enviar o produto e me deram apenas uma opção estornar o valor pago. Eu não quero essa opção eu quero o meu produto ou simiilar! E além de tudo isso estão \"empurrando\" eu aceitar o estorno do valor pago.\r\nO que devo fazer? A empresa está agindo de maneira certa? \r\n",
hashed_code: "ebcccf912189cc21f94b58bc357de4539ba90049ce11c52c9dc443d06cad1760a9327f9c163dfe77",
id: 20,
requester_email: "cbrandili@yahoo.com.br",
requester_name: "Carol",
requester_phone: "(65) 8115-6417",
state_id: 13,
title: "Defesa do Consumidor",
updated_at: "2012-09-11T11:28:05-03:00"
})

Question.create({
answers_count: 1,
available: true,
city_id: 433,
created_at: "2012-09-14T21:23:09-03:00",
description: "Por gentileza,ouve um termo de audiência em janeiro deste ano, no qual meu ex marido teria que me repassar através da empresa onde trabalhava 20% do salário líquido até o 5º dia útil de cada mês. Em 1º de agosto ele foi demitido. E o quinto dia útil foi 10/09/2012, mas ele não me repassou nada, nem a empresa, pois a juíza não especificou no termo o desconto rescisório. Pedi conselho a um advogado e ele me repondeu que eu deveria procurar a defensoria pública mas que eu tenho que esperar 3 meses de atraso para poder ser pedido a execução.Ou seja, não há mais nada a ser feito antes de 3 meses? Afinal uma criança espera 3 meses para comer? Eu vou ter que tomar empréstimos até ele poder ser cobrado? Se for assim a justiça está sendo totalmente falha em relação a pensão. Eu recebia 591,00 todo mês. Ele já tinha 16 anos de empresa. Se 20% do salário dele era esse valor, ele rescebia uns 3000,00 então a rescisão não foi menos que 10.000,00 fora multa, fgts e mais seguro desemprego.",
hashed_code: "d5a5940e2e58d60d6ed552c6020e2d21eed0cddb371ffe1af103521035b297ae5e5fbed4ebd4cee7",
id: 22,
requester_email: "pauloemariana.lima@gmail.com",
requester_name: "Mariana Lima",
requester_phone: "(71) 3024-5565",
state_id: 5,
title: "Pensão Alimentícia",
updated_at: "2012-09-14T21:23:09-03:00"
})

Question.create({
answers_count: 1,
available: true,
city_id: 1873,
created_at: "2012-09-20T13:17:18-03:00",
description: "estou me separando do meu marido, e gostaria de saber como funciona a questão patrimonial (somos casados em comunhão total de bens), sendo que temos 4 filhos.",
hashed_code: "0f9aa907fd98eae216afe5e742977a83766034c8edd915d8024d8b710b67f56a3e5be7c47d2770d2",
id: 23,
requester_email: "paulosilvatexeiraruas@yahoo.com.br",
requester_name: "paulo",
requester_phone: "(38) 9100-1937",
state_id: 11,
title: "Familiar",
updated_at: "2012-09-20T13:17:18-03:00"
})

Question.create({
  :id => 24,
  :title => "caixa econômica",
  :description => "bom dia. por trabalhar em um banco recebo vale transporte em dinheiro. preciso fazer um financiamento habitacional na caixa, porém eles querem considerar o que recebo de salário + vale transporte. Isso é ilegal certo?",
  :requester_name => "gleidson araujo",
  :requester_email => "gleidson.araujo@bradescoseguros.com.br",
  :city_id => 3643,
  :state_id => 19,
  :requester_phone => "(21) 8290-8863",
  :hashed_code => "b0958b761d6d87acb780e41623461ca13a1e89577f6734d4e98dac04bbaf87569124dfe68f274a57",
  :answers_count => 1,
  :available => true,
  :created_at => "Mon, 24 Sep 2012 10:57:33 BRT -03:00",
  :updated_at => "Mon, 24 Sep 2012 10:57:33 BRT -03:00" 

})

Question.create({
  :id => 25,
  :title => "Inventario",
  :description => "Boa tarde,meu pai faleceu a12 anos e deixou minha mãe e três filhos,ocorre que a 1 ano meu irmão faleceu e depois de 9 meses minha mãe também faleceu,não tem inventario de nenhum deles,o único bem é um terreno 10x35 que já esta dividido entre os herdeiros e construído em cada um dos seus respectivos lotes,não tenho dinheiro para as despesas de inventario e meus sobrinhos não querem ajudar,minha irma esta desempregado,como posso fazer? obrigada",
  :requester_name => "Roselaine Ruiz Rodrigues Silva do Carmo",
  :requester_email => "roserrsc@gmail.com",
  :city_id => 5389,
  :state_id => 26,
  :requester_phone => "(11) 6791-8174",
  :hashed_code => "932ef2e0fe504b33576d6c6fca1622a56a7194f8ea3e45fc2c55875a0aaa27d076043d4bae077e53",
  :answers_count => 1,
  :available => true,
  :created_at => "Mon, 24 Sep 2012 13:44:18 BRT -03:00",
  :updated_at => "Mon, 24 Sep 2012 13:44:18 BRT -03:00"
  })

Question.create({
  :id => 26,
  :title => "Separação",
  :description => "Algumas duvidas: sou casada há 13 anos no regime de separacao total de bens (os bens sao 1 apartamento e 1 clinica odontologia onde ele é o proprietário) . Hj, temos 2 filhos . Nossa relação caminha para o divorcio mas ele me ameaça dizendo q se eu quero separar eu devo sair de casa (mesmo não tendo p onde ir, exceto casa dos meus pais que é muito distante de onde moro atualmente) . Ele se nega a sair e diz que se eu o fizer, não levarei as cças pq ele não suporta ficar longe delas e me acha incapaz, burra, ciumenta... Enfim, a história é longa e não gostaria de expor tudo agora. Tenho 2 boletins de ocorrência por agressão, provas de q sai p beber e vai parar em bordel, enfim... Diante de tantas ameaças, tenho medo dele dizer a verdade e eu, ficar sem meus filhos, sem ter p onde ir... Uma orientação por favor? ",
  :requester_name => "ale",
  :requester_email => "alefk@globo.com",
  :city_id => 5389,
  :state_id => 26,
  :requester_phone => "(11) 5573-1794",
  :hashed_code => "b8ac24df44a73db65ca5a8f2888b302851adf844f876fd3de2edd9da3be20c8965343a27f3d96ff8",
  :answers_count => 1,
  :available => true,
  :created_at => "Mon, 24 Sep 2012 14:37:35 BRT -03:00",
  :updated_at => "Mon, 24 Sep 2012 14:37:35 BRT -03:00"
})

Question.create({
  :id => 29,
  :title => "Rescisão de contrato",
  :description => "Boa tarde,\r\n\r\nTrabalhei durante 48 dias em uma empresa com salário de R$ 1.300,00, R$ 110,00 de vale transporte e R$ 253,00 de vale alimentação. \r\nNa minha contratação foi combinado que teria um período de experiência de 90 dias, porém minha carteira de trabalho não foi assinada e eu não assinei nenhum contrato. \r\nO pedido de demissão foi feito por mim e eu pedi dispensa imediata, assinei uma carta feito a punho e saí da empresa.\r\nGostaria de saber quanto tenho a receber. Eles tem direito a cobrar multa por quebra de contrato? E de descontar o aviso prévio?\r\nLembrando que, minha carteira não foi assinada.\r\nQuais são meus direitos? Vocês podem fazer cálculo do quanto tenho a receber?\r\n\r\nAguardo",
  :requester_name => "Jéssica Carolina Augusto Raphael",
  :requester_email => "jeh.raphael@hotmail.com",
  :city_id => 5075,
  :state_id => 26,
  :requester_phone => "(19) 8238-3720",
  :hashed_code => "02d485b4d2c77a6113271f6c75285ad1f3d7a92bfe7ba7e71b6b02fc8059975d91e0da2a2a39ca7c",
  :answers_count => 0,
  :available => true,
  :created_at => "Wed, 26 Sep 2012 12:59:44 BRT -03:00",
  :updated_at => "Wed, 26 Sep 2012 12:59:44 BRT -03:00"
})

Question.create({
  :id => 30,
  :title => "Contrato de experiência",
  :description => "Boa tarde,\r\n\r\nTrabalhei durante 48 dias em uma empresa com salário de R$ 1.300,00, R$ 110,00 de vale transporte e R$ 253,00 de vale alimentação. \r\nNa minha contratação foi combinado que teria um período de experiência de 90 dias, porém minha carteira de trabalho não foi assinada e eu não assinei nenhum contrato. \r\nO pedido de demissão foi feito por mim e eu pedi dispensa imediata, assinei uma carta feito a punho e saí da empresa.\r\nGostaria de saber quanto tenho a receber. Eles tem direito a cobrar multa por quebra de contrato? E de descontar o aviso prévio?\r\nLembrando que, minha carteira não foi assinada.\r\nQuais são meus direitos? Vocês podem fazer cálculo do quanto tenho a receber?\r\n\r\nAguardo, ",
  :requester_name => "Jéssica Carolina Augusto Raphael",
  :requester_email => "jeh.raphael@hotmail.com",
  :city_id => 5075,
  :state_id => 26,
  :requester_phone => "(19) 8238-3720",
  :hashed_code => "083e17390b92261426748ab7bb72e6ef1f5bd403eec9872c558595fb40787c8a546ef43afb4998e9",
  :answers_count => 1,
  :available => true,
  :created_at => "Wed, 26 Sep 2012 13:04:45 BRT -03:00",
  :updated_at => "Wed, 26 Sep 2012 13:04:45 BRT -03:00"
})

Question.create({
  :id => 31,
  :title => "dúvida vale transporte ",
  :description => "“Muito embora o art. 5° do Decreto 95247/87, ao regulamentar a Lei 7418/85, vede \"ao empregador substituir o Vale-Transporte por antecipação em dinheiro ou qualquer outra forma de pagamento\", o pagamento da verba em espécie não transmuda a natureza da verba para salarial. Além do art. 6º, do citado Decreto, dispor expressamente que o vale-transporte não terá natureza salarial, o mesmo regramento pode ser encontrado no art. 2º, alínea a, da Lei 7.418/85: \"a) não tem natureza salarial, nem se incorpora à remuneração para quaisquer efeitos\". Ou seja, além da taxatividade na legislação relativamente à natureza jurídica indenizatória da verba, a finalidade do benefício confirma o acerto do legislador, qual seja, visa o ressarcimento pelos gastos tidos com o deslocamento do empregado no trajeto trabalho/casa e vice/versa. O que resulta dizer, mesmo que pago em dinheiro, não representa contraprestação pelo trabalho prestado”, não devendo ser considerado como verba salarial",
  :requester_name => "gleidson",
  :requester_email => "gleidson.araujo@bradescoseguros.com.br",
  :city_id => 3643,
  :state_id => 19,
  :requester_phone => "(21) 8290-8863",
  :hashed_code => "989e3cf129e49c403a5ce2daa54ed3c00d1ad0565aea405282a72bf329bae9a4dbb18b4ba031b688",
  :answers_count => 1,
  :available => true,
  :created_at => "Thu, 27 Sep 2012 09:21:29 BRT -03:00",
  :updated_at => "Thu, 27 Sep 2012 09:21:29 BRT -03:00"
})

Question.create({
  :id => 34,
  :title => "comprei um carro usado avista em uma loja de caros usados porem ja ten 30 dia que comprei o carro e ainda nao mim mandaram o recibo assinado como combinado e tambem o carro veio sem extintor de incêndio e chave de rodas.",
  :description => "gostaria de saber o que posso fazer pois ja perdi de vender o veiculo ,levando prejuízo cada dia mais .eles não mim ligaram para falar mais nada ..posso processar  ou o que posso fazer?tou sendo muito prejudicado por isso o recibo era pra ser mandado para mim no máximo sete dias.",
  :requester_name => "luis fellipe",
  :requester_email => "felipe_jucabike@yahoo.com.br",
  :city_id => 4950,
  :state_id => 26,
  :requester_phone => "(19) 8812-2737",
  :hashed_code => "573651090bd13367a33d9f69c45a317728cc4b358751aedb3e4926207d4b1c6d051c2820f1c1d000",
  :answers_count => 1,
  :available => true,
  :created_at => "Fri, 28 Sep 2012 22:08:01 BRT -03:00",
  :updated_at => "Fri, 28 Sep 2012 22:08:01 BRT -03:00"
})
#======================================================================================================


Answer.delete_all

Answer.create({
created_at: "2012-08-10T18:43:28-03:00",
description: "Marcio Rodrigues,\r\n\r\nConsegui entender sua história. Vamos lá: Como vc não fez nenhum contrato ou documento que comprove que o seu amigo vendeu o carro e não te repassou a sua parte, sugiro vc procurar o comprador do veículo para retirar uma cópia do recibo de compra do carro. Esse recibo deve ter sido passo pelo vendendor/amigo ao adquirente/comprador ! Com isso, vc consegue comprovar que quem vendeu o carro e recebeu o dinheiro foi o seu amigo, pois o recibo deve estar em nome dele. A partir daí, contrate um advogado e cobre judicialmente aquilo que falta ele te repassar. Att, Daniel Veiga ",
evaluation: nil,
hashed_code: "0c7cfc506bea6b676083d2b66fde72cc241ee486c9414e0c1c955300c40a0fdcea2340b1e8315670",
id: 65,
question_id: 1,
updated_at: "2012-08-10T18:43:28-03:00",
user_id: 2
})

Answer.create({
created_at: "2012-08-16T23:39:18-03:00",
description: "Olá, Cláudio !\r\nSe vc não foi o culpado pelo acidente, não vislumbro alguma incidência de responsabilidade pelos danos sofridos à menina. Vc a socorreu e pelos fatos narrados aparentemente a menina não corria risco de vida e não sofreu muitos ferimento. Levou-na até a sua casa. E quanto a piora na saúde da menina, também não vejo interferência sua. E mesmo assim vc dispôs de levá-la até a sua casa. O que comprova que vc a socorreu. No entanto, se a mãe posteriormente constatou que a criança deveria ser levada ao hospital, e depois descobriu-se que havia existência de uma fratura, isso foi decorrente do acidente. Agora se houve culpa sua, vc pode ser processado criminalmente por lesão corporal culposa. E na esferá cível por danos materiais (Ex: pagamento das despesas médicas) e morais (Intensa dor sofrida).\r\n  \r\n",
evaluation: nil,
hashed_code: "edb51979b828f03f010e4b3703e322dea146c4487ad4d4218375fe886568acf4863c9aabc7505c99",
id: 68,
question_id: 5,
updated_at: "2012-08-16T23:39:18-03:00",
user_id: 2
})

Answer.create({
created_at: "2012-08-28T15:10:00-03:00",
description: "Olá, Reginaldo. Da forma como foi exposto os fatos, entendo que a construtora tem o dever de manter o preço inicial da formação do contrato, com as mesmas condições oferecidas. O Código Civil em seu Art. 427 reza o seguinte: \"A proposta de contrato obriga o proponente, se o contrário não resultar dos termos dela, da natureza do negócio, ou das circunstâncias do caso.\" Concluindo: uma vez oferecido determinado preço a um negócio jurídico, tendo sido definitivamente aceito pela outra parte, não poderá futuramente o proponente querer alterar o preço do imóvel a ser vendido por mera liberalidade. Procure um advogado para tomar as medidas cabíveis. Att, Daniel Veiga\r\n\r\n",
evaluation: "useful",
hashed_code: "c39d79fa1c3bb814b4dd8860647b910d8f39ac98bbee06f6632859485623896df6f239622a956470",
id: 76,
question_id: 14,
updated_at: "2012-08-28T15:54:37-03:00",
user_id: 2
})

Answer.create({
created_at: "2012-08-15T12:11:46-03:00",
description: "Cara usuária,\r\n\r\nSuas chances de êxito no processo dependem diretamente das provas que forem produzidas. Se você conseguir provar por meio de testemunhas ou mesmo documentos (e-mails trocados entre vocês, mensagens em que ela lhe ofende, etc) que você era constantemente agredida e conseguir convencer o magistrado de suas alegações, sairá vitoriosa da ação. O simples fato dela ter realizado boletins de ocorrência não prova nada, principalmente porque não foi dado prosseguimento à ocorrência.",
evaluation: "useful",
hashed_code: "f8c547e8342a0431b29d24194cc21b07d133f18896a19350e1165425d71f94dde9cf2c8d654b94fd",
id: 67,
question_id: 4,
updated_at: "2012-08-21T14:36:09-03:00",
user_id: 4
})

Answer.create({
created_at: "2012-08-23T16:53:09-03:00",
description: "Cara usuária,\r\n\r\nNesse caso, apesar de sua indignação com a situação, apenas sua amiga tem legitimidade para realizar a denúncia relatando os maus tratos por ela vivenciados, uma vez que esta é a verdadeira vítima. Seu papel será, tão somente aconselhá-la a ir adiante com a ação penal, haja vista que nenhuma forma de agressão, em especial contra a mulher, deverá ficar impune.",
evaluation: nil,
hashed_code: "0fb1a11d9aba1b01005c80e62bfdebe5618f5c99d4836e32197f1bcc5591ff40b3f0adbc792ff61d",
id: 71,
question_id: 10,
updated_at: "2012-08-23T16:53:09-03:00",
user_id: 4
})

Answer.create({
created_at: "2012-08-23T17:02:07-03:00",
description: "Caro usuário,\r\n\r\nDe acordo com a situação relatada, você tem direito às seguintes verbas trabalhistas: saldo de salário, 13º salário, férias acrescidas de 1/3 constitucional e uma multa prevista no art. 477 da CLT no valor de um mês de seu salário devido ao atraso na rescisão.\r\nComo você pediu demissão, nada lhe será devido a título de aviso prévio.\r\nPara receber as suas verbas rescisórias, lhe aconselho a ingressar com uma reclamação trabalhista na Justiça do Trabalho existente no local da prestação de serviços. O procedimento é bastante simples, não se fazendo necssária, nem mesmo, a presença de um advogado.\r\n\r\n",
evaluation: nil,
hashed_code: "89f20e031a56acffaae153305ddb8226bfe1d60fb498b36e23a23a3645db98de3d308af4f723e545",
id: 72,
question_id: 12,
updated_at: "2012-08-23T17:02:07-03:00",
user_id: 4
})

Answer.create({
created_at: "2012-08-23T17:09:58-03:00",
description: "Caro usuário,\r\n\r\nNesse caso, você poderá, simplesmente, revogar a procuração para resolver a situação. Contudo, se a venda já tiver sido concluída, você deverá ingressar imediatamente com uma ação judicial para sustar os atos praticados pelo seu mandatário, haja vista que este não mais representa os seus interesses, não havendo necessidade de manter o vínculo entre vocês dois. Nessa ação, caberá pedido de indenização pelos danos materiais que você tiver sofrido (por exemplo: venda de imóvel por preço abaixo do valor de mercado).",
evaluation: nil,
hashed_code: "2a8f2caa3fe744679494747e182737e90f2f0673af662a9c7657f0d0bdd4b56ebc539c469b2d4dcc",
id: 74,
question_id: 11,
updated_at: "2012-08-23T17:09:58-03:00",
user_id: 4
})

Answer.create({
created_at: "2012-08-23T17:09:07-03:00",
description: "Caro usuário,\r\n\r\nNesse caso, você poderá, simplesmente, revogar a procuração para resolver a situação. Contudo, se a venda já tiver sido concluída, você deverá ingressar imediatamente com uma ação judicial para sustar os atos praticados pelo seu mandatário, haja vista que este não mais representa os seus interesses, não havendo necessidade de manter o vínculo entre vocês dois. Nessa ação, caberá pedido de indenização pelos danos materiais que você tiver sofrido (por exemplo: venda de imóvel por preço abaixo do valor de mercado).",
evaluation: "useful",
hashed_code: "1fca2dc29d4a5c17a528699d783cd49f4502034258b6979fdf1742cb67b4259ba8225e0c23b8420f",
id: 73,
question_id: 11,
updated_at: "2012-08-23T19:34:15-03:00",
user_id: 4
})

Answer.create({
created_at: "2012-08-28T14:55:23-03:00",
description: "Prezado Ubirajara, a pensão será dividida 50% para cada uma. O art. 76 , § 2o. da Lei 8.213 /91 é claro ao determinar que o cônjuge divorciado ou separado judicialmente e que recebe pensão alimentícia, como no caso, concorrerá em igualdade de condições com os demais dependentes elencados no art. 16 , I do mesmo diploma legal. \r\nAtt, Daniel Veiga",
evaluation: "useful",
hashed_code: "d02a6a5b0f28a3b68709dac2dae12bd3f5bb95fcd5aaa540426ab6f23b581c5970f8b3a0f3ea991f",
id: 75,
question_id: 13,
updated_at: "2012-08-28T18:26:27-03:00",
user_id: 2
})

Answer.create({
created_at: "2012-08-30T21:45:05-03:00",
description: "Prezada, Mônica\r\nCaso vc não consiga amigavelmente reaver a parte que lhe cabe da construção do muro, será necessário captar testemunhas para atestar que houve um acordo verbal na construção desta obra. Você pode ingressar com ou sem advogado no Juizado Especial de Pequenas Causas. No entanto, verifique se os honorários advocatícios que lhe serão cobrados não serão desvantajoso a ponto de sair quase o preço do custo da quantia a ser ressarcida. No próprio Juizado há servidores que redigem as peças processuais para as pessoas que não tem advogado. Pode ser uma boa opção para você. Att, Daniel Veiga ",
evaluation: "useful",
hashed_code: "4bbe562eed77d0da96f7b1a0633412e388d95003933373465d486cdc5d9ec975f9e1b6c8f5eee9aa",
id: 77,
question_id: 15,
updated_at: "2012-08-30T21:50:00-03:00",
user_id: 2
})

Answer.create({
created_at: "2012-08-30T22:00:27-03:00",
description: "Boa noite, Ubirajara !\r\n\r\nO primeiro passo é ir até o Cartório de Imóveis e formalizar a Escritura de Compra e Venda. Essa formalidade é obrigatória para todos os bens imóveis com valor superior a 30x o salário mínimo. Com a escritura pública em mãos, o segundo passo é entrar no Cartório de Registro de Bens imóveis para registrar o bem por definitivo. Após essas duas etapas, o imóvel legalmente e comprovadamente considerado de sua propriedade. Att, Daniel Veiga",
evaluation: nil,
hashed_code: "bbf009b24d98a3c82096324eccdb7d1767b37961ce325877fda72034131a79b6b75ff045663d7d2c",
id: 78,
question_id: 16,
updated_at: "2012-08-30T22:00:27-03:00",
user_id: 2
})

Answer.create({
created_at: "2012-09-03T18:31:18-03:00",
description: "Cara usuária,\r\n\r\nSeu marido não tem direito ao dinheiro referente à venda da casa de seus pais, uma vez que, no regime de comunhão parcial, apenas os bens adquiridos após a celebração do casamento devem ser repartidos entre o casal em caso de separação.",
evaluation: nil,
hashed_code: "7164ee120f679012de1966129b2eec51533f7df73e2231bffd33fc77bf92af6bbc090c5faf43cd09",
id: 79,
question_id: 18,
updated_at: "2012-09-03T18:31:18-03:00",
user_id: 4
})

Answer.create({
created_at: "2012-09-03T18:38:34-03:00",
description: "Caro Marcos,\r\n\r\nApenas uma análise detalhada do plano de cargos e salários dos profissionais da educação de seu município poderá responder a essa pergunta. Isso porque, antes de lhe dar uma resposta concreta, é necessário analisar quais os requisitos especificados pelo plano de carreira desta categoria para verificar se o seu cargo de agente administrativo pode ser enquadrado como profissional da educação. Uma dica que posso lhe dar é procurar no edital do seu concurso quais as atribuições do agente administrativo e compará-las com as atribuições de um agente administrativo educacional para aferir a plausibilidade ou não de seu direito",
evaluation: "useful",
hashed_code: "3130d179d5b1904daf6e1004a6b4148ff4cfd6f50d13f31ae2d5d8faa3a8e944302b1cf41583f349",
id: 80,
question_id: 17,
updated_at: "2012-09-03T23:52:46-03:00",
user_id: 4
})

Answer.create({
created_at: "2012-09-12T23:45:57-03:00",
description: "Prezada, Jênifer Silva\r\n\r\nO instrumento jurídico adequado seria a propositura de uma ação de inderdição para declará-lo incapaz de exercer os atos da vida civil, devendo ser nomeado um curador para representá-lo. O abandono de incapaz é um crime previsto no Código Penal, tratando-se de ação pública incondicionada, ou seja, quem é o titular da ação penal é o Ministério Público. A abertura de um inquérito policial se justificaria se o seu pai tiver deixado algum incapaz em situação de risco. Ele não pode tirar os pertences da casa da sua mãe sem antes dividir igualitariamente o quinhão com os filhos. Para isso, há de ser feito o inventário dos bens. A ação de interdição deverá ser proposta por um advogado e quanto ao crime de abandono, será necessário ir até a delegacia mais próximo para noticiar a configuração desse crime e aguardar a conclusão do inquérito para uma possível denúncia de crime por parte do MP. Espero ter elucidade suas dúvidas. Atenciosamente, Daniel Veiga   ",
evaluation: "useful",
hashed_code: "16b95b83e8956da2d4a48fb0e23845235a0d304d24f4412c0f13d2a2ce10d4ad737d1b0461486548",
id: 81,
question_id: 19,
updated_at: "2012-09-14T13:46:08-03:00",
user_id: 2
})

Answer.create({
created_at: "2012-09-14T19:46:06-03:00",
description: "Para melhor análise do seu saldo de FGTS, recomendo que procure uma agência da Caixa Econônima Federal, que possui um setor específico para tal. Assim, você poderá verificar se a empresa recolheu todos os impostos que lhe eram devidas, bem como os valores que foram depositados em sua conta de FGTS. Solicite um extrato.",
evaluation: "useful",
hashed_code: "c8c26306270ba42270b9ed7fb055986e25bcd8088a2776b82170c28d0d8e19ab50f285b8da8c1f6f",
id: 83,
question_id: 21,
updated_at: "2012-09-14T20:20:52-03:00",
user_id: 20
})

Answer.create({
created_at: "2012-09-14T19:49:41-03:00",
description: "Ratifico as considerações do nobre colega Daniel. Acrescentando que muitas vezes não é viável o ajuizamento de uma ação. Desta forma, tente resolver amigavelmente. At. Adonias Júnior ",
evaluation: "useful",
hashed_code: "35d543e8b7c7ef25572dcae4771b8e72d7d2c0f3559a26b86c49d13515f43e66841787cdf46b8c3f",
id: 84,
question_id: 20,
updated_at: "2012-09-16T22:52:20-03:00",
user_id: 20
})

Answer.create({
created_at: "2012-09-12T23:53:04-03:00",
description: "Prezada, Carol. A empresa está malferindo o regramento do Código de Defesa do Consumidor, art. 30, que reza o seguinte teor: \"Toda informação ou publicidade, suficientemente precisa, veiculada por qualquer forma ou meio de comunicação com relação a produtos e serviços oferecidos ou apresentados, obriga o fornecedor que a fizer veicular ou dela se utilizar e integra o contrato que vier a ser celebrado\". Uma vez oferecido determinado preço a um negócio jurídico e tendo sido definitivamente aceito pela outra parte, não poderá futuramente o proponente querer alterar o preço do imóvel a ser vendido por mera liberalidade. Mande um comunicado por escrito com prazo de resposta e caso não resulte em algum efeito procure um advogado para tomar as medidas cabíveis. Att, Daniel Veiga\r\n",
evaluation: "useful",
hashed_code: "5fcd730d336c63862117099f278e2526650fb40b718c69fd6710361cad884c69196e833e5f46b675",
id: 82,
question_id: 20,
updated_at: "2012-09-16T22:52:48-03:00",
user_id: 2
})

Answer.create({
created_at: "2012-09-20T21:40:42-03:00",
description: "Olá usuária!\r\n\r\nNa realidade, são duas questões distintas. Inicialmente, quanto ao desconto de 20% sobre o valor das verbas rescisórias, infelizmente você terá que ingressar com uma nova ação, visto que o acordo que vocês fizeram não contempla esta hipótese.\r\nJá em relação a continuar recebendo a pensão alimentícia, você pode procurar um advogado em sua cidade para que este peticione ao juízo e informe o descumprimento. Não há necessidade de esperar três meses, mas lhe adianto que dificilmente o acordo poderá ser mantido, tendo em vista que o pai da criança agora se encontra desempregado.",
evaluation: nil,
hashed_code: "973e7d2b0d453c28f06f8bdc76cb6056a01e852ffb14d4019e4bd9fe68803faefff807b7eff7b611",
id: 85,
question_id: 22,
updated_at: "2012-09-20T21:40:42-03:00",
user_id: 4
})

Answer.create({
created_at: "2012-09-20T21:46:08-03:00",
description: "Se vocês eram casados no regime de comunão total, os bens do casal devem ser repartidos em partes iguais entre vocês dois, ressalvando que existe a possibilidade de se fazer um acordo que disponha de forma diferente acerca da divisão dos bens conforme a vontade dos ex-nubentes. A quantidade de filhos não influencia nessa divisão, uma vez que a parte deles somente será entregue no momento da herança.",
evaluation: nil,
hashed_code: "f6350d9a4631a66275ef559b87c0fb3d2b9e09fc6ffe95c1ba7e330ff383363361b83fe7cd693339",
id: 86,
question_id: 23,
updated_at: "2012-09-20T21:46:08-03:00",
user_id: 4
})

Answer.create({
  :id => 87,
  :user_id => 4,
  :question_id => 24,
  :evaluation => "useless",
  :description => "Na realidade, não há nenhuma ilegalidade em considerar como sua remuneração o valor do salário acrescido do vale transporte. Isso porque a partir do momento em que o empregador opta por pagar o vale transporte em dinheiro,  este passa a integrar o seu salário para todos os efeitos legais, inclusive cálculo das demais verbas trabalhistas.",
  :hashed_code => "4414e521e33f71a9304bc257970ea26c29f2af29466e113c084b1f4a319e157837fda9926e2c1a95",
  :created_at => "Wed, 26 Sep 2012 19:48:52 BRT -03:00",
  :updated_at => "Thu, 27 Sep 2012 09:19:21 BRT -03:00"
})

Answer.create({
  :id => 88,
  :user_id => 4,
  :question_id => 25,
  :evaluation => "useful",
  :description => "Para solucionar este problema sem despender muito dinheiro, você pode procurar a defensoria pública para ingressar com uma ação de abertura de inventário com pedido de justiça gratuita, ficando, dessa forma, isento do pagamento de custas judiciais e emolumentos. Assim, você poderá legalizar a situação do terreno de uma forma menos cara.",
  :hashed_code => "936f9c38cc9733ce30d7a34a586a11de51ef53901cff05826dccb76e90f13187e53c21c8b691cf8c",
  :created_at => "Wed, 26 Sep 2012 20:01:55 BRT -03:00",
  :updated_at => "Thu, 27 Sep 2012 11:00:43 BRT -03:00"
})

Answer.create({
  :id => 90,
  :user_id => 4,
  :question_id => 30,
  :evaluation => "useful",
  :description => "Infelizmente, no caso acima relatado, você só tem R$-36,59 a receber.\r\nNa situação exposta, você teria direito a R$-997,80 de saldo de salário e R$-277,17 de 13o salário, o que resultaria em um total de R$-1274,97. Contudo, por ter rescindido o contrato de  experiência antecipadamente, você é obrigada a pagar uma indenização à empresa no valor de R$1136,38, valor este que, somado aos descontos da previdência social, perfaz um total de R$1238,38, reduzindo substancialmente o valor de seu crédito.",
  :hashed_code => "9ed8701c2ec261e81b80ed59ee080e95336c86af1171560326d008f493621cb596197a869548e9bb",
  :created_at => "Wed, 26 Sep 2012 20:27:51 BRT -03:00",
  :updated_at => "Wed, 26 Sep 2012 20:42:36 BRT -03:00"
})

Answer.create({
  :id => 89,
  :user_id => 4,
  :question_id => 26,
  :evaluation => "useful",
  :description => "Não há motivo para preocupação. Primeiramente, em relação à casa, mesmo vocês dois tendo casado no regime de separação total de bens, ainda há possibilidade de você ficar com o apartamento ou, pelo menos, com uma porcentagem do valor da venda, se você comprovar por meio de documentos ou testemunhas que contribuiu financeiramente para a compra do imóvel ou dos bens que o integram. No que diz respeito às crianças, as provas que você possui acerca da conduta do seu marido são suficientes para lhe garantir a guarda de seus filhos e, mesmo que assim não fosse, hoje em dia a Justiça preza pela guarda conjunta, de modo que você não poderá ser privada do convívio com as crianças.",
  :hashed_code => "23efe7667acf5ee7e3d231b79f8ca5ffd07ddf8eb5d878d2b9a02f6941be18590bd1a37747333ec2",
  :hashed_code => "23efe7667acf5ee7e3d231b79f8ca5ffd07ddf8eb5d878d2b9a02f6941be18590bd1a37747333ec2",
  :created_at => "Wed, 26 Sep 2012 20:14:11 BRT -03:00",
  :updated_at => "Wed, 26 Sep 2012 22:18:38 BRT -03:00"
})

Answer.create({
  :id => 91,
  :user_id => 4,
  :question_id => 31,
  :evaluation => nil,
  :description => "Caro usuário,\r\n\r\nO comentário acima representa tão somente o posicionamento de um determinado jurista sobre a natureza do vale transporte quanto este é pago em espécie. Contudo, devo alertá-lo que este posicionamente é minoritário: a maioria dos juízes considera que o pagamento em dinheiro do vale transporte desvirtua a natureza do instituto, perdendo seu caráter indenizatório e adquirindo natureza salarial, o que, inclusive, é mais benéfico para o trabalhador.",
  :hashed_code => "b59829bdad9e5388fe9d73a4b9a463d9f076aa1310e1d2935477b77ff05447bea57d77b1694801f1",
  :created_at => "Mon, 01 Oct 2012 19:25:33 BRT -03:00",
  :updated_at => "Mon, 01 Oct 2012 19:25:33 BRT -03:00"
})

Answer.create({
  :id => 92,
  :user_id => 4,
  :question_id => 34,
  :evaluation => nil,
  :description => "Primeiramente, sugerimos que você tente resolver a questão de forma amigável. Procure os representantes legais da empresa que lhe venderam o veículo e exponha sua situação. Caso isso não resolva, é possível ingressar com uma ação de cobrança no judiciário e, pleitear, inclusive, danos morais e materiais, uma vez que você afirmou acima que já sofreu inúmeros prejuízos e transtornos com a falta de compromisso da empresa.",
  :hashed_code => "1fe2ecf6b544738f0042466d822415471132c2a6e8630ce66c134422312cb42d6d2d198f0e0186c0",
  :created_at => "Mon, 01 Oct 2012 19:29:11 BRT -03:00",
  :updated_at => "Mon, 01 Oct 2012 19:29:11 BRT -03:00"
})