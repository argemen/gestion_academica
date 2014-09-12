require 'test_helper'

class PlanEvaluacionesControllerTest < ActionController::TestCase
  setup do
    @plan_evaluacion = planes_evaluacion(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planes_evaluacion)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_evaluacion" do
    assert_difference('PlanEvaluacion.count') do
      post :create, plan_evaluacion: { evaluacion_id: @plan_evaluacion.evaluacion_id, fecha: @plan_evaluacion.fecha, planificacion_id: @plan_evaluacion.planificacion_id, puntuacion: @plan_evaluacion.puntuacion }
    end

    assert_redirected_to plan_evaluacion_path(assigns(:plan_evaluacion))
  end

  test "should show plan_evaluacion" do
    get :show, id: @plan_evaluacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan_evaluacion
    assert_response :success
  end

  test "should update plan_evaluacion" do
    patch :update, id: @plan_evaluacion, plan_evaluacion: { evaluacion_id: @plan_evaluacion.evaluacion_id, fecha: @plan_evaluacion.fecha, planificacion_id: @plan_evaluacion.planificacion_id, puntuacion: @plan_evaluacion.puntuacion }
    assert_redirected_to plan_evaluacion_path(assigns(:plan_evaluacion))
  end

  test "should destroy plan_evaluacion" do
    assert_difference('PlanEvaluacion.count', -1) do
      delete :destroy, id: @plan_evaluacion
    end

    assert_redirected_to planes_evaluacion_path
  end
end
