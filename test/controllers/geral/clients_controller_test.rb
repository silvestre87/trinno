require 'test_helper'

class Geral::ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geral_client = geral_clients(:one)
  end

  test "should get index" do
    get geral_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_geral_client_url
    assert_response :success
  end

  test "should create geral_client" do
    assert_difference('Geral::Client.count') do
      post geral_clients_url, params: { geral_client: { company_name: @geral_client.company_name, document: @geral_client.document, email: @geral_client.email, name: @geral_client.name, notes: @geral_client.notes, phone: @geral_client.phone, status: @geral_client.status, users_id: @geral_client.users_id } }
    end

    assert_redirected_to geral_client_url(Geral::Client.last)
  end

  test "should show geral_client" do
    get geral_client_url(@geral_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_geral_client_url(@geral_client)
    assert_response :success
  end

  test "should update geral_client" do
    patch geral_client_url(@geral_client), params: { geral_client: { company_name: @geral_client.company_name, document: @geral_client.document, email: @geral_client.email, name: @geral_client.name, notes: @geral_client.notes, phone: @geral_client.phone, status: @geral_client.status, users_id: @geral_client.users_id } }
    assert_redirected_to geral_client_url(@geral_client)
  end

  test "should destroy geral_client" do
    assert_difference('Geral::Client.count', -1) do
      delete geral_client_url(@geral_client)
    end

    assert_redirected_to geral_clients_url
  end
end
