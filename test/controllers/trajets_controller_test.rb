require 'test_helper'

class TrajetsControllerTest < ActionController::TestCase
  setup do
    @trajet = trajets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trajets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trajet" do
    assert_difference('Trajet.count') do
      post :create, trajet: { arriveeVille: @trajet.arriveeVille, date: @trajet.date, departVille: @trajet.departVille, distance: @trajet.distance, id: @trajet.id, nbPlacesDisponible: @trajet.nbPlacesDisponible, prix: @trajet.prix, userAuteurID: @trajet.userAuteurID, userBeneficiaireID: @trajet.userBeneficiaireID }
    end

    assert_redirected_to trajet_path(assigns(:trajet))
  end

  test "should show trajet" do
    get :show, id: @trajet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trajet
    assert_response :success
  end

  test "should update trajet" do
    patch :update, id: @trajet, trajet: { arriveeVille: @trajet.arriveeVille, date: @trajet.date, departVille: @trajet.departVille, distance: @trajet.distance, id: @trajet.id, nbPlacesDisponible: @trajet.nbPlacesDisponible, prix: @trajet.prix, userAuteurID: @trajet.userAuteurID, userBeneficiaireID: @trajet.userBeneficiaireID }
    assert_redirected_to trajet_path(assigns(:trajet))
  end

  test "should destroy trajet" do
    assert_difference('Trajet.count', -1) do
      delete :destroy, id: @trajet
    end

    assert_redirected_to trajets_path
  end
end
