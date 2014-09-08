require 'test_helper'

class UnidadCurricularsControllerTest < ActionController::TestCase
  setup do
    @unidad_curricular = unidades_curriculares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unidades_curriculares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unidad_curricular" do
    assert_difference('UnidadCurricular.count') do
      post :create, unidad_curricular: { nombre: @unidad_curricular.nombre }
    end

    assert_redirected_to unidad_curricular_path(assigns(:unidad_curricular))
  end

  test "should show unidad_curricular" do
    get :show, id: @unidad_curricular
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unidad_curricular
    assert_response :success
  end

  test "should update unidad_curricular" do
    patch :update, id: @unidad_curricular, unidad_curricular: { nombre: @unidad_curricular.nombre }
    assert_redirected_to unidad_curricular_path(assigns(:unidad_curricular))
  end

  test "should destroy unidad_curricular" do
    assert_difference('UnidadCurricular.count', -1) do
      delete :destroy, id: @unidad_curricular
    end

    assert_redirected_to unidades_curriculares_path
  end
end
