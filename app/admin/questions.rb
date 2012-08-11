ActiveAdmin.register Question do
  index do
    column :id
    column :title
    column :description
    column :requester_name
    column :requester_email
    column :created_at
    default_actions
  end
end
