require 'test_helper'

class AreaAcademicasControllerTest < ActionController::TestCase
  setup do
    @area_academica = areas_academicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:areas_academicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create area_academica" do
    assert_difference('AreaAcademica.count') do
      post :create, area_academica: { institucion: @area_academica.institucion, nombre: @area_academica.nombre, telefono: @area_academica.telefono }
    end

    assert_redirected_to area_academica_path(assigns(:area_academica))
  end

  test "should show area_academica" do
    get :show, id: @area_academica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @area_academica
    assert_response :success
  end

  test "should update area_academica" do
    patch :update, id: @area_academica, area_academica: { institucion: @area_academica.institucion, nombre: @area_academica.nombre, telefono: @area_academica.telefono }
    assert_redirected_to area_academica_path(assigns(:area_academica))
  end

  test "should destroy area_academica" do
    assert_difference('AreaAcademica.count', -1) do
      delete :destroy, id: @area_academica
    end

    assert_redirected_to areas_academicas_path
  end
end
