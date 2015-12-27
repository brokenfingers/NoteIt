class Task < ActiveRecord::Base
  belongs_to :task_group
  belongs_to :user
end