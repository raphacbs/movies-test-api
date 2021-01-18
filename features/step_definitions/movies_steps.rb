Dado("o {int} do filme") do |id|
    $id = id
end
  
Quando("realizar uma requisição para consultar o filme") do
   $response  = @movies.getById($id)
end
  
Então("o código do resposta é igual a {int}") do |cod|
    puts "O código retornado foi #{$response.code}"
    expect($response.code).to eq(cod)
end

Dado("o {int} do filme e a {float}") do |id, nota|
    $id = id
    $nota = nota
  end
  
  Quando("realizar a requisição para avaliar o filme") do
    $response  = @movies.rating($id, $nota)
  end
