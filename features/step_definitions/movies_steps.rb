Dado("o {int} do filme") do |id|
    $id = id
end
  
Quando("realizar uma requisição para consultar o filme") do
   $response  = @movies.get($id)
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

  Dado("a rota da API de detalhes de um filme com o id {int}") do |id|
    $id = id
  end
  
  Quando("realizar uma requisição do tipo GET") do
    $response  = @movies.get($id)
  end
  
  Então("a API irá retorna os dados do filme com o cod {int}") do |cod|
    expect($response.code).to eq(cod)

    schema = JSONSchemer.schema(File.read("features/support/schemas/movies_details_schema.json"))

    body = JSON.parse $response.body
   
    schema.validate(body).each do |v|
        puts "- error type: #{v["type"]}"
        puts "  data: #{v['data']}"
        puts "  path: #{v["data_pointer"]}"
    end

    expect(schema.valid? body).to eq(true)
    
  end
  
