class CoursController < ApplicationController

  before_action :authenticate_user! ,only: [:inscription]
  before_action :authenticate_teacher! ,only: [:new, :create, :destroy]

  def index
     @cours = Cour.page(params[:page]).per(20)
  end

  def create
  end

  def new
    cours = Cour.create teacher_id:current_teacher.id, matiere:params[:matiere], jour:params[:jour], 
    lieu:params[:lieu]
    #cours.latitude =  Geocoder.coordinates(params[:lieu])[0]
    #cours.longitude = Geocoder.coordinates(params[:lieu])[1]
    cours.save
    #sleep (3)
    redirect_to "/cours/index"
  end

  def show
    @cours = Cour.find(params[:id])
    @inscriptions = Inscription.where("cours_id=?",@cours.id)
  end

  def update
  end

  def destroy
    cours = Cour.find(params[:id]).destroy
    inscriptions = Inscription.where(cours_id: params[:id])
    inscriptions.each do |i|
      i.destroy
    end
    redirect_to '/cours/index'
  end

  def accueil
    @client_location = request.location.address
  end

  def search
    @cours = Cour.where("matiere=? AND nombre_eleves < ?", params[:matiere], 3)
    @lieu = params[:lieu]
    #@lieu_coo = Geocoder.coordinates(params[:lieu])

  end

  def inscription
    cours = Cour.find(params[:id])
    cours.nombre_eleves = cours.nombre_eleves + 1
    cours.save
    #cours.inscriptions.create eleves_id:current_user.id
    inscription = Inscription.create eleves_id:current_user.id, cours_id:cours.id
    inscription.save

    redirect_to '/cours/index'
  end

end
