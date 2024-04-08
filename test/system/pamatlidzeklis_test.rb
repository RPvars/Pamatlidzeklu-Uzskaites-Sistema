require "application_system_test_case"

class PamatlidzeklisTest < ApplicationSystemTestCase
  setup do
    @pamatlidzekli = pamatlidzeklis(:one)
  end

  test "visiting the index" do
    visit pamatlidzeklis_url
    assert_selector "h1", text: "Pamatlidzeklis"
  end

  test "should create pamatlidzekli" do
    visit pamatlidzeklis_url
    click_on "New pamatlidzekli"

    fill_in "Apraksts", with: @pamatlidzekli.apraksts
    fill_in "Garantija", with: @pamatlidzekli.garantija
    fill_in "Iegades datums", with: @pamatlidzekli.iegades_datums
    fill_in "Izmaksas", with: @pamatlidzekli.izmaksas
    fill_in "Kategorija", with: @pamatlidzekli.kategorija_id
    fill_in "Modelis", with: @pamatlidzekli.modelis
    fill_in "Nosaukums", with: @pamatlidzekli.nosaukums
    fill_in "Razotajs", with: @pamatlidzekli.razotajs
    fill_in "Serijas nummurs", with: @pamatlidzekli.serijas_nummurs
    click_on "Create Pamatlidzekli"

    assert_text "Pamatlidzekli was successfully created"
    click_on "Back"
  end

  test "should update Pamatlidzekli" do
    visit pamatlidzekli_url(@pamatlidzekli)
    click_on "Edit this pamatlidzekli", match: :first

    fill_in "Apraksts", with: @pamatlidzekli.apraksts
    fill_in "Garantija", with: @pamatlidzekli.garantija
    fill_in "Iegades datums", with: @pamatlidzekli.iegades_datums
    fill_in "Izmaksas", with: @pamatlidzekli.izmaksas
    fill_in "Kategorija", with: @pamatlidzekli.kategorija_id
    fill_in "Modelis", with: @pamatlidzekli.modelis
    fill_in "Nosaukums", with: @pamatlidzekli.nosaukums
    fill_in "Razotajs", with: @pamatlidzekli.razotajs
    fill_in "Serijas nummurs", with: @pamatlidzekli.serijas_nummurs
    click_on "Update Pamatlidzekli"

    assert_text "Pamatlidzekli was successfully updated"
    click_on "Back"
  end

  test "should destroy Pamatlidzekli" do
    visit pamatlidzekli_url(@pamatlidzekli)
    click_on "Destroy this pamatlidzekli", match: :first

    assert_text "Pamatlidzekli was successfully destroyed"
  end
end
