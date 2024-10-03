
import Foundation

func Exercise1Remake(){
    var numsArray = [Int]()
    
    repeat {
        print("Teclea un número:")
        if let number = Int(readLine()!){
            numsArray.append(number)
        }
        else{
            print("Error: Introduce un número y prueba de nuevo:")
        }
    } while numsArray.count <= 4
    
    let sum = numsArray.reduce(0, +)
    let average = sum / numsArray.count
    
    print("-------------------------------")
    for num in numsArray{
        print(num)
    }
    print("-------------------------------")
    print("La media de los números introducidos es: ", average)
}
func Exercise4Remake(){
    
}

func Exercise7(){
    print("--------Ejercicio 1--------")
    Exercise1Remake()
    print("\n--------Ejercicio 4--------")
    Exercise4Remake()
}
