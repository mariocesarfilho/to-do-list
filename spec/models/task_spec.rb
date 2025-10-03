require 'rails_helper'

RSpec.describe Task, type: :model do
  it "é válido quando possue título, descrição e status" do
    task = Task.new(titulo: "Ruby", descricao: "Aprendendo a programar", status: false)
    expect(task).to be_valid
  end

  it "é inválido quando o título é nulo" do
    task = Task.new(titulo: nil)
    task.valid?
    expect(task.errors[:titulo]).to include("can't be blank")
  end
end
