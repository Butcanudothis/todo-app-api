class Task < ApplicationRecord
    self.table_name = "Task"
    self.inheritance_column = :_type_disabled
    self.primary_key = "id"
    before_create :set_uuid

    private

    def set_uuid
      self.id = SecureRandom.uuid
    end
end