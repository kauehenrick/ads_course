import kotlin.math.pow
import java.util.Scanner

fun main() {
    val sc = Scanner(System.`in`)

    fun soma(a: Float, b: Float): Float {
        return a + b
    }
    fun subtracao(a: Float, b: Float): Float {
        return  a - b
    }
    fun multiplicacao(a: Float, b: Float): Float {
        return  a * b
    }
    fun divisao(a: Float, b: Float): Float {
        return  a / b
    }
    fun potencia(a: Float, b: Float): Float {
        return  a.pow(b)
    }

    var opcao: Int

    do {
        println("ESCOLHA UMA OPÇÃO: ")
        println("1 - SOMA")
        println("2 - SUBTRAÇÃO")
        println("3 - MULTIPLICAÇÃO")
        println("4 - DIVISÃO")
        println("5 - POTENCIAÇÃO")
        println("6 - SAIR")
        opcao = sc.nextInt()

        when (opcao) {
            1 -> {
                print("Informe um número: ")
                val a = sc.nextFloat()
                print("Informe outro número: ")
                val b = sc.nextFloat()

                println("SOMA: ${soma(a, b)}")
                println()
            }
            2 -> {
                print("Informe um número: ")
                val a = sc.nextFloat()
                print("Informe outro número: ")
                val b = sc.nextFloat()

                println("SUBTRAÇÃO: ${subtracao(a, b)}")
                println()
            }
            3 -> {
                print("Informe um número: ")
                val a = sc.nextFloat()
                print("Informe outro número: ")
                val b = sc.nextFloat()

                println("MULTIPLICAÇÃO: ${multiplicacao(a, b)}")
                println()
            }
            4 -> {
                print("Informe um número: ")
                val a = sc.nextFloat()
                print("Informe outro número: ")
                val b = sc.nextFloat()

                println("DIVISÃO: ${divisao(a, b)}")
                println()
            }
            5 -> {
                print("Informe um número: ")
                val a = sc.nextFloat()
                print("Informe outro número: ")
                val b = sc.nextFloat()

                println("POTENCIAÇÃO: ${potencia(a, b)}")
                println()
            }
            6 -> {
                println("SAINDO...")
            }
        }
    } while (opcao != 6)
}