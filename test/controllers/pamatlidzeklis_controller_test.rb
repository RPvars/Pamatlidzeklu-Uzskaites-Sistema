require "test_helper"

class PamatlidzeklisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pamatlidzekli = pamatlidzeklis(:one)
  end

  test "should get index" do
    get pamatlidzeklis_url
    assert_response :success
  end

  test "should get new" do
    get new_pamatlidzekli_url
    assert_response :success
  end

  test "should create pamatlidzekli" do
    assert_difference("Pamatlidzekli.count") do
      post pamatlidzeklis_url, params: { pamatlidzekli: { apraksts: @pamatlidzekli.apraksts, garantija: @pamatlidzekli.garantija, iegades_datums: @pamatlidzekli.iegades_datums, izmaksas: @pamatlidzekli.izmaksas, kategorija_id: @pamatlidzekli.kategorija_id, modelis: @pamatlidzekli.modelis, nosaukums: @pamatlidzekli.nosaukums,razotajs: @pamatlidzekli.razotajs, serijas_nummurs: @pamatlidzekli.serijas_nummurs } }
    end

    assert_redirected_to pamatlidzekli_url(Pamatlidzekli.last)
  end

  test "should show pamatlidzekli" do
    get pamatlidzekli_url(@pamatlidzekli)
    assert_response :success
  end

  test "should get edit" do
    get edit_pamatlidzekli_url(@pamatlidzekli)
    assert_response :success
  end

  test "should update pamatlidzekli" do
    patch pamatlidzekli_url(@pamatlidzekli), params: { pamatlidzekli: { apraksts: @pamatlidzekli.apraksts, garantija: @pamatlidzekli.garantija, iegades_datums: @pamatlidzekli.iegades_datums, izmaksas: @pamatlidzekli.izmaksas, kategorija_id: @pamatlidzekli.kategorija_id, modelis: @pamatlidzekli.modelis, nosaukums: @pamatlidzekli.nosaukums, razotajs: @pamatlidzekli.razotajs, serijas_nummurs: @pamatlidzekli.serijas_nummurs } }
    assert_redirected_to pamatlidzekli_url(@pamatlidzekli)
  end

  test "should destroy pamatlidzekli" do
    assert_difference("Pamatlidzekli.count", -1) do
      delete pamatlidzekli_url(@pamatlidzekli)
    end

    assert_redirected_to pamatlidzeklis_url
  end
end
