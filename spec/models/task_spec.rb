require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:task) { build(:task) }

  it "é válido quando possue título, descrição e status" do
    # task = Task.new(titulo: "Ruby", descricao: "Aprendendo a programar", status: false)
    expect(task).to be_valid
  end

  it "é inválido quando o título é nulo" do
    
    task_sem_titulo = build(:task, titulo: nil)

    # Agora não é mais necessário eu criar o meu objeto aqui, pois estou usando o factorybot para isso
    # task = Task.new(titulo: nil)
    task_sem_titulo.valid?
    expect(task_sem_titulo.errors[:titulo]).to include("can't be blank")
  end
end
