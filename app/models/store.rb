class Store < ApplicationRecord
	validates :name, presence: {
		message: 'Preencha o nome'
	}
end
