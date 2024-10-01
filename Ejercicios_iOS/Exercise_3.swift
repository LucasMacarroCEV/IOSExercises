
import Foundation

func GetNumbers() -> Array<Int>{
    var tempArray = [Int]()
    repeat {
        print("Teclea un número:")
        if let number = Int(readLine()!){
            tempArray.append(number)
        }
        else{
            print("Error: Introduce un número y prueba de nuevo:")
        }
    } while tempArray.count <= 4
    return tempArray
}
func GetAverage(numsArray:Array<Int>) -> Int{
    var sum: Int = 0
    for x in numsArray{
        sum += x
        print(x)
    }
    return sum
}

func Exercise3(){
    let numsArray = GetNumbers()
    print("-------------------------------")
    let sum = GetAverage(numsArray: numsArray)
    print("-------------------------------")
    print("La media de los números introducidos es: ", sum/numsArray.count)
}
