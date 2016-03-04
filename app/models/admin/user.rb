class Admin::User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_and_belongs_to_many :menus
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # remove from related table
  after_destroy { |record| 
  	ActiveRecord::Base.connection.execute("DELETE from admin_groups_users where user_id = '#{record.id}'") 
  }
end
