
import Foundation

var exercise: Int = 0

func ExerciseTitle(exercise:Int){
    print("\n-------------------------------\nEjercicio", exercise,"\n")
}

while true{
    print("¿Qué ejercicio quieres ver?  1-2-3-4-5-6")
    while true{
        if let ex = Int(readLine()!){
            exercise = ex
            break
        }
        else {
            print("Error: Teclea un número de ejercicio válido.")
        }
    }
    if exercise > 0 && exercise <= 6{
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
    default:
        print("Error: Teclea un número de ejercicio válido.")
    }
}
