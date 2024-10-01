
import Foundation

func Exercise1() {
    var numsArray = [Int]()
    var sum: Int = 0
    
    repeat {
        print("Teclea un número:")
        if let number = Int(readLine()!){
            numsArray.append(number)
        }
        else{
            print("Error: Introduce un número y prueba de nuevo:")
        }
    } while numsArray.count <= 4
    
    print("-------------------------------")
    for x in numsArray{
        sum += x
        print(x)
    }
    print("-------------------------------")
    print("La media de los números introducidos es: ", sum/numsArray.count)
}
