tarefas = []

def adicionar_tarefa(tarefas)
    puts "-------------------------"
    print "Qual a tarefa a ser adicionada: "
    inf = gets.chomp.to_s
    tarefas << inf
    puts "-------------------------"
end

def listar_tarefas(tarefas)
    puts "-------------------------"
    if tarefas.empty?
        puts "Nenhuma tarefa cadastrada"
    else
        puts "Lista de Tarefas:"
            tarefas.each_with_index do |tarefa, index|
                puts "#{index + 1}. #{tarefa}"
            end
        puts "-------------------------"
    end
end

def salvar_tarefas(tarefas)
    File.write("Tarefas.txt", tarefas.join("\n"))
    puts "Tarefas salvas com sucesso!"
end

def remover_tarefa(tarefas)
    puts "-------------------------"
    if tarefas.empty?
        puts "Nenhuma tarefa cadastrada"
    end
    tarefas.each_with_index do |tarefa, index|
        puts "#{index + 1}. #{tarefa}"
    end
    print "Qual tarefa a ser removida: "
    indice = gets.chomp.to_i - 1
    tarefas.delete_at(indice)
    puts "-------------------------"
end

loop do
    puts "MENU"
    puts "1. Adicionar Tarefa"
    puts "2. Listar Tarefa"
    puts "3. Remover Tarefa"
    puts "4. Salvar Tarefas"
    puts "5. Sair"
    print "Escolha uma opção: "
    option = gets.chomp
    case option
    when "1"
        adicionar_tarefa(tarefas)
    when "2"
        listar_tarefas(tarefas)
    when "3"
        remover_tarefa(tarefas)
    when "4"
        salvar_tarefas(tarefas)
    when "5"
        break
    else
        puts "Opcao invalida"
    end
end