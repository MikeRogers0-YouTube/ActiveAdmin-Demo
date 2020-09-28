ActiveAdmin.register Post do

  index do
    selectable_column
    column :id
    column :title
    column :author
    column :created_at
    actions
  end
  
end
