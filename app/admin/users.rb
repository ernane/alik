ActiveAdmin.register User do
  index do
    column :id
    column :username
    column :email
    column :phone
    column :fields
    column :portifolio_of_oab
    column :created_at
    default_actions
  end
end
