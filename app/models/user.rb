class User < ActiveRecord::Base
  has_many :identities
  has_many :task_groups
  has_many :tasks, :through => :task_groups
end