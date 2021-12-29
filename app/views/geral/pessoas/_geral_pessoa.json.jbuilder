json.extract! geral_pessoa, :id, :name, :cpf, :rg, :email, :telefone, :user_id, :status, :created_at, :updated_at
json.url geral_pessoa_url(geral_pessoa, format: :json)
