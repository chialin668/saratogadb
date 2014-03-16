class Obj < ActiveRecord::Base
	belongs_to :app
	has_many :fileds
end
