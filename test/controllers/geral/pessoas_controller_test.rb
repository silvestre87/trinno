require 'test_helper'

class Geral::PessoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geral_pessoa = geral_pessoas(:one)
  end

  test "should get index" do
    get geral_pessoas_url
    assert_response :success
  end

  test "should get new" do
    get new_geral_pessoa_url
    assert_response :success
  end

  test "should create geral_pessoa" do
    assert_difference('Geral::Pessoa.count') do
      post geral_pessoas_url, params: { geral_pessoa: { cpf: @geral_pessoa.cpf, email: @geral_pessoa.email, name: @geral_pessoa.name, rg: @geral_pessoa.rg, status: @geral_pessoa.status, telefone: @geral_pessoa.telefone, user_id: @geral_pessoa.user_id } }
    end

    assert_redirected_to geral_pessoa_url(Geral::Pessoa.last)
  end

  test "should show geral_pessoa" do
    get geral_pessoa_url(@geral_pessoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_geral_pessoa_url(@geral_pessoa)
    assert_response :success
  end

  test "should update geral_pessoa" do
    patch geral_pessoa_url(@geral_pessoa), params: { geral_pessoa: { cpf: @geral_pessoa.cpf, email: @geral_pessoa.email, name: @geral_pessoa.name, rg: @geral_pessoa.rg, status: @geral_pessoa.status, telefone: @geral_pessoa.telefone, user_id: @geral_pessoa.user_id } }
    assert_redirected_to geral_pessoa_url(@geral_pessoa)
  end

  test "should destroy geral_pessoa" do
    assert_difference('Geral::Pessoa.count', -1) do
      delete geral_pessoa_url(@geral_pessoa)
    end

    assert_redirected_to geral_pessoas_url
  end
end
