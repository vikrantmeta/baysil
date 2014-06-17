class MypageController < ApplicationController
  def mypage
  @certifications = User.find_by_id(current_user.id).certification
@skills = User.find_by_id(current_user.id).skill
@educations = User.find_by_id(current_user.id).education
@languages = User.find_by_id(current_user.id).language
@projects = User.find_by_id(current_user.id).project
 @expriences = User.find_by_id(current_user.id).exprience


	end
end
