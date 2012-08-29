# encoding: UTF-8
ActiveAdmin.register User do
  index do
    column :id
    column :username
    column :email
    column :phone
    column :fields
    column :featured
    column :portifolio_of_oab
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs "Informações de Segurança" do
      f.input :username,  :label => "Nome"
      f.input :email,     :label => "E-mail"
      f.input :featured,  :label => "Destaque"
      f.input :about,     :label => "Sobre"
    end
    f.buttons
  end
end
