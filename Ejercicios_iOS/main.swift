
import Foundation

var exercise: Int = 0

func ExerciseTitle(exercise:Int){
    print("\n-------------------------------\nEjercicio", exercise,"\n")
}

while true{
    print("¿Qué ejercicio quieres ver?  1-2-3-4")
    while true{
        if let ex = Int(readLine()!){
            exercise = ex
            break
        }
        else {
            print("Error: Teclea un número de ejercicio válido.")
        }
    }
    if exercise > 0 && exercise < 3{
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
    default:
        print("Error: Teclea un número de ejercicio válido.")
    }
}
