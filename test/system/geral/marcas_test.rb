require "application_system_test_case"

class Geral::MarcasTest < ApplicationSystemTestCase
  setup do
    @geral_marca = geral_marcas(:one)
  end

  test "visiting the index" do
    visit geral_marcas_url
    assert_selector "h1", text: "Geral/Marcas"
  end

  test "creating a Marca" do
    visit geral_marcas_url
    click_on "New Geral/Marca"

    fill_in "Name", with: @geral_marca.name
    click_on "Create Marca"

    assert_text "Marca was successfully created"
    click_on "Back"
  end

  test "updating a Marca" do
    visit geral_marcas_url
    click_on "Edit", match: :first

    fill_in "Name", with: @geral_marca.name
    click_on "Update Marca"

    assert_text "Marca was successfully updated"
    click_on "Back"
  end

  test "destroying a Marca" do
    visit geral_marcas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marca was successfully destroyed"
  end
end
