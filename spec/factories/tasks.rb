require 'faker'

FactoryBot.define do
    # Criando um objeto com um comportamento expecífico
    # Neste caso estou criando um teste com todos os campos inseridos
    factory :task do
        titulo { Faker::Book.title }
        descricao { Faker::Lorem.sentence }
        status { Faker::Boolean.boolean }
    end
end