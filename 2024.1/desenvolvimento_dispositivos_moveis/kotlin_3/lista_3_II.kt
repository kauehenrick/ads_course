import java.util.Scanner
import kotlin.math.round

fun main(){
    val sc = Scanner(System.`in`)

    fun podeVotar(){
        print("Informe o ano que você nasceu: ")
        val anoNascimento = sc.nextInt()

        if ((2024 - anoNascimento) >= 16 && (2024 - anoNascimento) <= 70) {
            println("Você tem ${2024 - anoNascimento} anos e pode votar!")
        } else {
            println("Você tem ${2024 - anoNascimento} anos e NÃO pode votar!")
        }
    }
    podeVotar()

    fun validaSenha() {
        val senha = "1234"

        print("Informe a senha: ")
        val senhaTeste = readln()

        if (senha == senhaTeste) {
            println("ACESSO VÁLIDO")
        } else {
            println("ACESSO INVÁLIDO")
        }
    }
    validaSenha()

    fun pesoIdeal() {
        print("Informe sua altura: ")
        val altura = sc.nextFloat()
        print("Informe seu sexo (F/M): ")
        val sexo = readln()

        when (sexo) {
            "M" -> {
                println("Seu peso ideal é: ${round((72.7 * altura) - 58)}KG")
            }
            "F" -> {
                println("Seu peso ideal é: ${round((62.1 * altura) - 44.7)}KG")
            }
            else -> {
                println("Informe um sexo válido!")
            }
        }
    }
    pesoIdeal()

    fun mediaTresNotas() {
        var notas = 0.00

        print("Informe seu número de matricula: ")
        val numeroMatricula = sc.nextInt()
        for (i in 1..3) {
            print("Informe a $i nota: ")
            notas += sc.nextDouble()
        }

        val media = notas/3

        val conceito = if (media >= 90) {
            "A"
        } else if (media>=75) {
            "B"
        } else if (media>=60) {
            "C"
        } else if (media>=40) {
            "D"
        } else {
            "E"
        }

        when (conceito) {
            "A", "B", "C" -> {
                println("Olá, seu numero de matricula é $numeroMatricula e você foi APROVADO!")
            }
            "D", "E" -> {
                println("Olá, seu numero de matricula é $numeroMatricula e você foi REPROVADO!")
            }
        }
    }
    mediaTresNotas()

    fun retornarArgumento(): String{
        print("Informe um número: ")
        val numero = sc.nextFloat()
        
        val retorno = if (numero > 0) {
            "P"
        } else {
            "N"
        }
        
        return retorno
    }
    val argumentoRetornado = retornarArgumento()
    println("O argumento retornado foi: $argumentoRetornado")

    fun imparesAteCinquenta() {
        var numeros = emptyArray<Int>()

        for (i in 1..50) {
            if (i % 2 != 0) {
                numeros += i
            }
        }
        println("Os numeros impares de 1 até 50 são: ${numeros.contentToString()}")
    }
    imparesAteCinquenta()
}

