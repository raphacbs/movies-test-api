Dado("o {int} da companhia") do |id|
    $id = id
  end
  
  Quando("realizar uma requisição para consultar") do
    $response  = @companies.getById($id)
  end
  
  Então("o código é igual a {int}") do |cod|
    puts "O código retornado foi #{$response.code}"
    expect($response.code).to eq(cod)
  end
  