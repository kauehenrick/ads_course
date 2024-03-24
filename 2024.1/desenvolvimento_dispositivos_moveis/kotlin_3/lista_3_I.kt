import java.util.Scanner
import kotlin.math.pow

fun main() {
    val sc = Scanner(System.`in`)

    fun imprimirAteCem(){
        for (num in 1..100) {
            print("$num ")
        }
        println()
    }
    imprimirAteCem()

    fun imprimirAteOutro(){
        for (num in 11..87) {
            print("$num ")
        }
        println()
    }
    imprimirAteOutro()

    fun imprimirKotlin() {
        for (i in 1..10) {
            print("Kotlin ")
        }
        println()
    }
    imprimirKotlin()

    fun tabuadaTres() {
        for (i in 0..10){
            print("${i * 3} ")
        }
        println()
    }
    tabuadaTres()

    fun imprimirImpares() {
        var numeros = emptyArray<Int>()

        for (i in 1..10) {
            if (i % 2 != 0) {
                numeros += i
            }
        }
        println(numeros.contentToString())
    }
    imprimirImpares()

    fun imprimirQuadrado() {
        var numeros = emptyArray<Float>()

        for (i in 1..5){
            print("Informe o $i numero: ")
            val num = sc.nextFloat()
            numeros += num
        }
        for (i in numeros){
            print("${i.pow(2)} ")
        }
        println()
    }
    imprimirQuadrado()

    fun imprimirMetade() {
        var numeros = emptyArray<Float>()

        for (i in 1..6){
            print("Informe o $i numero: ")
            numeros += sc.nextFloat()
        }
        for (i in numeros){
            print("${i/2} ")
        }
        println()
    }
    imprimirMetade()

    fun somaAteCem () {
        var soma = 0

        for (i in 1..100) {
           soma += i
        }
        println("A soma dos números de 1 até 100 é: $soma")
    }
    somaAteCem()

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

    fun mediaAprovacao() {
        print("Informe a 1ª nota: ")
        val nota1 = sc.nextFloat()
        print("Informe a 2ª nota: ")
        val nota2 = sc.nextFloat()
        print("Informe a 3ª nota: ")
        val nota3 = sc.nextFloat()
        print("Informe a 4ª nota: ")
        val nota4 = sc.nextFloat()
        print("Informe a 5ª nota: ")
        val nota5 = sc.nextFloat()

        println()
        val media = (nota1 + nota2 + nota3 + nota4 + nota5)/5
        if (media >= 5.00) {
            println("Você foi aprovado!")
        } else {
            println("Você foi reprovado!")
        }
    }
    mediaAprovacao()
}


