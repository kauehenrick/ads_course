import java.util.Scanner

fun main() {
    val sc = Scanner(System.`in`)
    fun saudacao() {
        print("Informe seu nome: ")
        val nome = readln()
        print("Informe sua idade: ")
        val idade = sc.nextInt()

        println("Olá ${nome}, você tem ${idade}, certo?")
    }
    saudacao()

    fun media() {
        print("Informe a quantidade de notas que você deseja calcular a média: ")
        val qntNotas = sc.nextInt()
        var somaNotas = 0.00

        for (i in 1..qntNotas){
            print("Informe a ${i}ª nota: ")
            val number = sc.nextDouble()
            somaNotas += number
        }

        println("O valor da média é: ${somaNotas/qntNotas}")
    }
    media()

    fun calculadora(){
        var opcao = 0
        do {
            println("SELECIONE UMA OPÇÃO")
            println("1 - Realizar cálculos.")
            println("2 - Sair do programa")
            opcao = sc.nextInt()
            if (opcao == 1) {
                print("Informe o primeiro número: ")
                val num1 = sc.nextFloat()
                print("Informe o segundo número: ")
                val num2 = sc.nextFloat()
                println()

                println("A soma dos números é: ${num1 + num2}")
                println("A subtração dos números é: ${num1 - num2}")
                println("A multiplicação dos números é: ${num1 * num2}")
                println("A divisão dos números é: ${num1 / num2}")
                println()
            }
        } while(opcao != 2)
    }
    calculadora()

    fun calcularIdade() {
        print("Insira o ano que você nasceu: ")
        val anoNascimento = sc.nextInt()
        println()
        println("Você tem ${2024 - anoNascimento} anos!!!")
    }
    calcularIdade()

    fun mediaAprovacao() {
        print("Informe seu nome: ")
        val nome = readln()
        print("Informe a 1ª nota: ")
        val nota1 = sc.nextFloat()
        print("Informe a 2ª nota: ")
        val nota2 = sc.nextFloat()
        print("Informe a 3ª nota: ")
        val nota3 = sc.nextFloat()

        println()
        val media = (nota1 + nota2 + nota3)/3
        if (media >= 7.00) {
            println("Olá ${nome}, você foi aprovado!")
        } else {
            println("Olá ${nome}, você foi reprovado!")
        }
    }
    mediaAprovacao()
}

