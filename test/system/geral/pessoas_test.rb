require "application_system_test_case"

class Geral::PessoasTest < ApplicationSystemTestCase
  setup do
    @geral_pessoa = geral_pessoas(:one)
  end

  test "visiting the index" do
    visit geral_pessoas_url
    assert_selector "h1", text: "Geral/Pessoas"
  end

  test "creating a Pessoa" do
    visit geral_pessoas_url
    click_on "New Geral/Pessoa"

    fill_in "Cpf", with: @geral_pessoa.cpf
    fill_in "Email", with: @geral_pessoa.email
    fill_in "Name", with: @geral_pessoa.name
    fill_in "Rg", with: @geral_pessoa.rg
    fill_in "Status", with: @geral_pessoa.status
    fill_in "Telefone", with: @geral_pessoa.telefone
    fill_in "User", with: @geral_pessoa.user_id
    click_on "Create Pessoa"

    assert_text "Pessoa was successfully created"
    click_on "Back"
  end

  test "updating a Pessoa" do
    visit geral_pessoas_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @geral_pessoa.cpf
    fill_in "Email", with: @geral_pessoa.email
    fill_in "Name", with: @geral_pessoa.name
    fill_in "Rg", with: @geral_pessoa.rg
    fill_in "Status", with: @geral_pessoa.status
    fill_in "Telefone", with: @geral_pessoa.telefone
    fill_in "User", with: @geral_pessoa.user_id
    click_on "Update Pessoa"

    assert_text "Pessoa was successfully updated"
    click_on "Back"
  end

  test "destroying a Pessoa" do
    visit geral_pessoas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pessoa was successfully destroyed"
  end
end
