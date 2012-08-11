ActiveAdmin.register Answer do
  index do
    column :id
    column :description
    column :created_at
    default_actions
  end
end
