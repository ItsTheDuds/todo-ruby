def pedir_numeros
    puts "Digite o primeiro número: "
    num1 = gets.chomp.to_f

    puts "Digite o segundo número: "
    num2 = gets.chomp.to_f

    return num1, num2
end

while (true) do
    puts "MENU"
    puts "1. Adição"
    puts "2. Subtração"
    puts "3. Multiplicação"
    puts "4. Divisão"
    puts "5. Sair"
    print "Escolha uma opção: "
    option = gets.chomp
    case option
    when "1"
        num1, num2 = pedir_numeros
        result = num1 + num2
        puts "Resultado: #{result}"
    when "2"
        num1, num2 = pedir_numeros
        result = num1 - num2
        puts "Resultado: #{result}"
    when "3"
        num1, num2 = pedir_numeros
        result = num1 * num2
        puts "Resultado: #{result}"
    when "4"
        num1, num2 = pedir_numeros
        if num2 == 0
            puts "Erro: Divisão por zero!"
        else
            result = num1 / num2
            puts "Resultado: #{result}"
        end
    when "5"
        break
    else
        puts "Opção inválida!"
    end
end