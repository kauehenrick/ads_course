import java.util.Scanner

fun main() {
    val sc = Scanner(System.`in`)

    fun primeiraLista(){
        val lista = mutableListOf(3, 4, "Programação", true, "Kotlin", 5.0)
        println(lista.joinToString(", "))

        lista[3] = "Programação para dispositivos móveis"
        println(lista.joinToString(", "))

        lista.add(3, "Frentista")
        println(lista.joinToString(", "))

        lista.addLast("Volte amor")
        println(lista.joinToString(", "))

        lista.removeFirst()
        println(lista.joinToString(", "))

        var itsokay = 0
        for (i in lista) {
            if (i == false) {
                itsokay = 1
            }
        }
        if (itsokay == 1) {
            println("OK!")
        } else {
            println("NOT OK!")
        }

        lista.clear()
        println(lista)
    }
    primeiraLista()

    fun mediaDaLista(){
        val mutableList : MutableList<Float> = arrayListOf()

        for (i in 1..4) {
            print("Informe a $i nota: ")
            mutableList += sc.nextFloat()
        }

        println("As notas foram: ${mutableList.joinToString(", ")} e sua média foi: ${(mutableList.sum())/4}")
    }
    mediaDaLista()

    fun numerosParesImpares() {
        val numeros : MutableList<Int> = arrayListOf()
        val pares : MutableList<Int> = arrayListOf()
        val impares : MutableList<Int> = arrayListOf()

        for (i in 1..20) {
            print("Informe o $i número: ")
            numeros += sc.nextInt()
            if (i % 2 != 0) {
                impares += i
            } else {
                pares += i
            }
        }
        println("Todos: ${numeros.joinToString(", ")}")
        println("Pares: ${pares.joinToString(", ")}")
        println("Impares: ${impares.joinToString(", ")}")
    }
    numerosParesImpares()
}