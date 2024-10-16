
import Foundation

var exercise: Int = 0

func ExerciseTitle(exercise:Int){
    print("\n-------------------------------\nEjercicio", exercise,"\n")
}

while true{
    print("¿Qué ejercicio quieres ver?  1-2-3-4-5-6-7-8")
    while true{
        if let ex = Int(readLine()!){
            exercise = ex
            break
        }
        else {
            print("Error: Teclea un número de ejercicio válido.")
        }
    }
    if exercise > 0 && exercise <= 8{
        ExerciseTitle(exercise: exercise)
    }
    switch exercise {
    case 1:
        Exercise1()
    case 2:
        Exercise2()
    case 3:
        Exercise3()
    case 4:
        Exercise4()
    case 5:
        Exercise5()
    case 6:
        Exercise6()
    case 7:
        Exercise7()
    case 8:
        Exercise8()
    default:
        print("Error: Teclea un número de ejercicio válido.")
    }
}
