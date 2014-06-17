require 'test_helper'

class ExpriencesControllerTest < ActionController::TestCase
  setup do
    @exprience = expriences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expriences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exprience" do
    assert_difference('Exprience.count') do
      post :create, exprience: { compnay_name: @exprience.compnay_name, currently_working: @exprience.currently_working, designation: @exprience.designation, link: @exprience.link, location: @exprience.location, time_from: @exprience.time_from, time_to: @exprience.time_to, upload_file: @exprience.upload_file }
    end

    assert_redirected_to exprience_path(assigns(:exprience))
  end

  test "should show exprience" do
    get :show, id: @exprience
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exprience
    assert_response :success
  end

  test "should update exprience" do
    put :update, id: @exprience, exprience: { compnay_name: @exprience.compnay_name, currently_working: @exprience.currently_working, designation: @exprience.designation, link: @exprience.link, location: @exprience.location, time_from: @exprience.time_from, time_to: @exprience.time_to, upload_file: @exprience.upload_file }
    assert_redirected_to exprience_path(assigns(:exprience))
  end

  test "should destroy exprience" do
    assert_difference('Exprience.count', -1) do
      delete :destroy, id: @exprience
    end

    assert_redirected_to expriences_path
  end
end
