require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { banchi: @person.banchi, bikou: @person.bikou, city: @person.city, douki: @person.douki, genki: @person.genki, gmaps: @person.gmaps, keitai: @person.keitai, kihukin: @person.kihukin, kouenkai: @person.kouenkai, latitude: @person.latitude, level: @person.level, longtude: @person.longtude, name: @person.name, postal_code: @person.postal_code, syoukai_id: @person.syoukai_id, tel_sigai: @person.tel_sigai, tel_sinai: @person.tel_sinai, town: @person.town }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    patch :update, id: @person, person: { banchi: @person.banchi, bikou: @person.bikou, city: @person.city, douki: @person.douki, genki: @person.genki, gmaps: @person.gmaps, keitai: @person.keitai, kihukin: @person.kihukin, kouenkai: @person.kouenkai, latitude: @person.latitude, level: @person.level, longtude: @person.longtude, name: @person.name, postal_code: @person.postal_code, syoukai_id: @person.syoukai_id, tel_sigai: @person.tel_sigai, tel_sinai: @person.tel_sinai, town: @person.town }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
