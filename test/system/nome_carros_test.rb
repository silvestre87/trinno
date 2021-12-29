require "application_system_test_case"

class NomeCarrosTest < ApplicationSystemTestCase
  setup do
    @nome_carro = nome_carros(:one)
  end

  test "visiting the index" do
    visit nome_carros_url
    assert_selector "h1", text: "Nome Carros"
  end

  test "creating a Nome carro" do
    visit nome_carros_url
    click_on "New Nome Carro"

    fill_in "Name", with: @nome_carro.name
    click_on "Create Nome carro"

    assert_text "Nome carro was successfully created"
    click_on "Back"
  end

  test "updating a Nome carro" do
    visit nome_carros_url
    click_on "Edit", match: :first

    fill_in "Name", with: @nome_carro.name
    click_on "Update Nome carro"

    assert_text "Nome carro was successfully updated"
    click_on "Back"
  end

  test "destroying a Nome carro" do
    visit nome_carros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nome carro was successfully destroyed"
  end
end
