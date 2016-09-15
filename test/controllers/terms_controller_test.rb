require 'test_helper'

class TermsControllerTest < ActionController::TestCase
  setup do
    @term = terms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:terms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create term" do
    assert_difference('Term.count') do
      post :create, term: { address: @term.address, contact: @term.contact, cpf_cnpj: @term.cpf_cnpj, end_of_period: @term.end_of_period, justification_description: @term.justification_description, legal_representer: @term.legal_representer, number_of_items: @term.number_of_items, removing_way: @term.removing_way, returning_way: @term.returning_way, role: @term.role, start_of_period: @term.start_of_period }
    end

    assert_redirected_to term_path(assigns(:term))
  end

  test "should show term" do
    get :show, id: @term
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @term
    assert_response :success
  end

  test "should update term" do
    patch :update, id: @term, term: { address: @term.address, contact: @term.contact, cpf_cnpj: @term.cpf_cnpj, end_of_period: @term.end_of_period, justification_description: @term.justification_description, legal_representer: @term.legal_representer, number_of_items: @term.number_of_items, removing_way: @term.removing_way, returning_way: @term.returning_way, role: @term.role, start_of_period: @term.start_of_period }
    assert_redirected_to term_path(assigns(:term))
  end

  test "should destroy term" do
    assert_difference('Term.count', -1) do
      delete :destroy, id: @term
    end

    assert_redirected_to terms_path
  end
end
