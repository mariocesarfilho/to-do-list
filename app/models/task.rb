class Task < ApplicationRecord

    validates :titulo, presence: true
    validates :descricao, presence: true
    validates :status, inclusion: {in: [true, false]}
end
