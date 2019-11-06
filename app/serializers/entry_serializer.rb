class EntrySerializer < ActiveModel::Serializer
  attributes :id, :diary_id, :routine_type, :content
  belongs_to :diary
end
