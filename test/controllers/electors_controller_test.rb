require 'test_helper'

class ElectorsControllerTest < ActionController::TestCase
  setup do
    @elector = electors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:electors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elector" do
    assert_difference('Elector.count') do
      post :create, elector: { banchi: @elector.banchi, bikou: @elector.bikou, douki: @elector.douki, kakunin: @elector.kakunin, kazoku_id: @elector.kazoku_id, kitaichi: @elector.kitaichi, kouenkai: @elector.kouenkai, name: @elector.name, postal_code: @elector.postal_code, syoukai_id: @elector.syoukai_id, tehai_1: @elector.tehai_1, tehai_2: @elector.tehai_2, tehai_3: @elector.tehai_3, tel_sinai: @elector.tel_sinai, town: @elector.town, yomi: @elector.yomi }
    end

    assert_redirected_to elector_path(assigns(:elector))
  end

  test "should show elector" do
    get :show, id: @elector
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elector
    assert_response :success
  end

  test "should update elector" do
    patch :update, id: @elector, elector: { banchi: @elector.banchi, bikou: @elector.bikou, douki: @elector.douki, kakunin: @elector.kakunin, kazoku_id: @elector.kazoku_id, kitaichi: @elector.kitaichi, kouenkai: @elector.kouenkai, name: @elector.name, postal_code: @elector.postal_code, syoukai_id: @elector.syoukai_id, tehai_1: @elector.tehai_1, tehai_2: @elector.tehai_2, tehai_3: @elector.tehai_3, tel_sinai: @elector.tel_sinai, town: @elector.town, yomi: @elector.yomi }
    assert_redirected_to elector_path(assigns(:elector))
  end

  test "should destroy elector" do
    assert_difference('Elector.count', -1) do
      delete :destroy, id: @elector
    end

    assert_redirected_to electors_path
  end
end
