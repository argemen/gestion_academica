require 'test_helper'

class PlanificacionesControllerTest < ActionController::TestCase
  setup do
    @planificacion = planificaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planificaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planificacion" do
    assert_difference('Planificacion.count') do
      post :create, planificacion: { carrera_id: @planificacion.carrera_id, lapsos: @planificacion.lapsos, semestre_id: @planificacion.semestre_id, seccion_id: @planificacion.seccion_id, unidad_curricular_id: @planificacion.unidad_curricular_id }
    end

    assert_redirected_to planificacion_path(assigns(:planificacion))
  end

  test "should show planificacion" do
    get :show, id: @planificacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planificacion
    assert_response :success
  end

  test "should update planificacion" do
    patch :update, id: @planificacion, planificacion: { carrera_id: @planificacion.carrera_id, lapsos: @planificacion.lapsos, semestre_id: @planificacion.semestre_id, seccion_id: @planificacion.seccion_id, unidad_curricular_id: @planificacion.unidad_curricular_id }
    assert_redirected_to planificacion_path(assigns(:planificacion))
  end

  test "should destroy planificacion" do
    assert_difference('Planificacion.count', -1) do
      delete :destroy, id: @planificacion
    end

    assert_redirected_to planificaciones_path
  end
end
