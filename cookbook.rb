    INSERIR_RECEITA = 1
    VISUALIZAR_RECEITAS = 2
    SAIR = 3

    
    def bem_vindo()
        puts "Bem-vindo ao Cookbook, sua rede social de receitas"
    end 

    def menu()
        puts "[#{INSERIR_RECEITA}] Cadastrar nova receita"
        puts "[#{VISUALIZAR_RECEITAS}] Ver receitas cadastradas"
        puts "[#{SAIR}] Sair"

        print "Escolha uma opção: "
        return gets.to_i()
    end

    def inserir_receita()
        puts "Digite o nome da receita: "
        nome = gets.chomp()
        puts "Digite o tipo da receita: "
        tipo = get.chomp()
        puts
        puts "Receita #{nome} cadastrada com sucesso!"
        puts
        return {nome: nome, tipo: tipo } 
    end

    def imprimir_receitas(receitas)
        puts "*********** Receitas cadastradas ***********"
        puts receitas.each do |receita| 
        puts "#{receita[:nome]} - #{receita[:tipo]}"
        end
        puts
        if receitas.empty?
            puts "Nenhuma receita cadastrada"
        end
    end
        
        bem_vindo()

        receitas=[]
        opcao = menu()

    loop do 
        if(opcao ==INSERIR_RECEITA)
            receitas << inserir_receita()
        elsif(opcao == VISUALIZAR_RECEITAS)
            imprimir_receitas(receitas)
        elsif(opcao == SAIR)
            break

        else
            puts "opção invalida"
        end
            opcao = menu()
        end
        
        puts
        puts 'Obrigada por usar o Cookbook, até logo'


