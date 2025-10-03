class TasksController < ApplicationController

  # Boas práticas, reautilização de código
  # Código mais limpo
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET tasks/index
  def index
    @tasks = Task.all
  end

  # GET /task/show
  def show
    
  end

  # GET /task/edit
  def edit

  end

  # GET task/new
  def new
    @task = Task.new
  end

  # POST task/id
  def create
    # Eu criei um objeto de tarefa e eu recebi os parâmetros 
    # do formulário
    @task = Task.new(task_params)
    # Aqui eu faço uma verificação se ele não existir no banco de dados

    respond_to do |format| 
      # Ira criar essa tarefa
      if @task.save
        format.html { redirect_to tasks_path, notice: 'Cadastrado com Sucesso!' }
        format.json { render :show, status: :created , location: @task}
      else
        # Se tiver os dados no banco de dados ele irá para a tela de new novamente
        # E retorna um erro
        format.html { render action: 'new' }
        format.json { render @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Tarefa atualizada com sucesso!' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to @task, notice: 'Excluido com sucesso'}
      format.json { head :no_content }
    end
  end

  private

  # Identificar a tarefa através do id
  def set_task
    @task = Task.find(params[:id])
  end

  # Pega os parametros de tarefa
  # Ou seja, todos os dados
  # Por questões de segurança, sempre expecificar o que você quer receber no parametro
  def task_params
    params.require(:task).permit(:titulo, :descricao, :status)
  end

end