require 'test_helper'

class MascotaControllerTest < ActionController::TestCase
  setup do
    @mascotum = mascota(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mascota)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mascotum" do
    assert_difference('Mascotum.count') do
      post :create, mascotum: { dueño: @mascotum.dueño, edad: @mascotum.edad, entrada: @mascotum.entrada, estado: @mascotum.estado, id_Mas: @mascotum.id_Mas, nombre: @mascotum.nombre, raza: @mascotum.raza, salida: @mascotum.salida, vacunas: @mascotum.vacunas }
    end

    assert_redirected_to mascotum_path(assigns(:mascotum))
  end

  test "should show mascotum" do
    get :show, id: @mascotum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mascotum
    assert_response :success
  end

  test "should update mascotum" do
    patch :update, id: @mascotum, mascotum: { dueño: @mascotum.dueño, edad: @mascotum.edad, entrada: @mascotum.entrada, estado: @mascotum.estado, id_Mas: @mascotum.id_Mas, nombre: @mascotum.nombre, raza: @mascotum.raza, salida: @mascotum.salida, vacunas: @mascotum.vacunas }
    assert_redirected_to mascotum_path(assigns(:mascotum))
  end

  test "should destroy mascotum" do
    assert_difference('Mascotum.count', -1) do
      delete :destroy, id: @mascotum
    end

    assert_redirected_to mascota_path
  end
end
