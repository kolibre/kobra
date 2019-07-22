class MakeResourceNotNullableInContentResources < ActiveRecord::Migration[5.2]
  def up
    change_column_null(:content_resources, :resource, false)
  end

  def down
    change_column_null(:content_resources, :resource, false)
  end
end
