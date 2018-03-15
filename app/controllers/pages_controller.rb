class PagesController < ApplicationController

  def monespace
  	#On affiche la liste des cours proposés si teacher et la liste des cours suivis si user
  	if user_signed_in?
  		@inscriptions = Inscription.where("eleves_id = ?", current_user.id)
  			
  	elsif teacher_signed_in?
  		@cours_proposes = Cour.where("teacher_id=?", current_teacher.id)
  	end
  		
  end


end
