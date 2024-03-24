import java.util.Scanner

fun main(){
    val sc = Scanner(System.`in`)
    fun soma(){
        print("Digite o valor de A: ")
        val a = sc.nextInt()
        print("Digite o valor de B: ")
        val b = sc.nextInt()

        println(a + b)
    }
    soma()

    fun temperatura(){
        print("Digite o valor da temperatura em graus Cº: ")
        val temp = sc.nextDouble()

        println(temp * 9 / 5 + 32)
    }
    temperatura()

    fun nomeIdade(){
        print("Informe seu nome: ")
        val nome = readln()
        print("Informe sua idade: ")
        val idade = sc.nextInt()

        println("Olá $nome você tem $idade anos!")
    }
    nomeIdade()

    fun retangulo(){
        print("Informe a altura do triangulo: ")
        val raltura = sc.nextDouble()
        print("Informe a largura do triangulo: ")
        val rlargura = sc.nextDouble()
        val area = raltura * rlargura

        println("A área do retângulo é $area !")
    }
    retangulo()

    fun dizOla(){
        print("Informe seu nome: ")
        val nome = readln()

        println("Olá, $nome!")
    }
    dizOla()

    fun calculadora(){
        print("Informe o primeiro número: ")
        val a = sc.nextInt()
        print("Informe o segundo número: ")
        val b = sc.nextInt()

        println("Soma: " + (a+b))
        println("Subtração: " + (a-b))
        println("Multiplicação: " + (a*b))
        println("Divisão: " + (a/b))
    }
    calculadora()

    fun media(){
        print("Informe a primeira nota: ")
        val nota1 = sc.nextDouble()
        print("Informe a segunda nota: ")
        val nota2 = sc.nextDouble()
        print("Informe a terceira nota: ")
        val nota3 = sc.nextDouble()

        val mediatotal = (nota1 + nota2 + nota3) / 2

        println("A media das notas é: $mediatotal")
    }
    media()

    fun tabuada(){
        print("Informe um número: ")
        val numero = sc.nextInt()

        println("$numero x 1 :" + (numero*1))
        println("$numero x 2 :" + (numero*2))
        println("$numero x 3 :" + (numero*3))
        println("$numero x 4 :" + (numero*4))
        println("$numero x 5 :" + (numero*5))
        println("$numero x 6 :" + (numero*6))
        println("$numero x 7 :" + (numero*7))
        println("$numero x 8 :" + (numero*8))
        println("$numero x 9 :" + (numero*9))
        println("$numero x 10 :" + (numero*10))
    }
    tabuada()
}
