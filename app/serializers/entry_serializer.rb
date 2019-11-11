class EntrySerializer < ActiveModel::Serializer
  attributes :id, :diary_id, :routine_type, :content, :created_at
  belongs_to :diary
end
