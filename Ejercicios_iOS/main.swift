
//-------------EXERCISE 1-------------
//var numsArray = [Int]()
//var sum: Int = 0
//
//repeat {
//    print("Teclea un número:")
//    if let number = Int(readLine()!){
//        numsArray.append(number)
//    }
//    else{
//        print("Error: Introduce un número y prueba de nuevo:")
//    }
//} while numsArray.count <= 4
//
//print("-------------------------------")
//for x in numsArray{
//    sum += x
//    print(x)
//}
//print("-------------------------------")
//print("La media de los números introducidos es: ", sum/numsArray.count)

//-------------EXERCISE 2-------------
var error = false

func SetName(playerNum:Int) -> String{
    var name: String
    repeat{
        print("Escribe el nombre del jugador", playerNum, ":")
        name = readLine()!
        if name.isEmpty{
            error = true
            print("Error: El nombre no puede estar en blanco.")
        }
        else if name.count > 15{
            error = true
            print("Error: El nombre no puede ser tan largo.")
        }
        else {
            if name.first!.isLowercase{
                let tempChar = name.first!.uppercased()
                name.remove(at: name.startIndex)
                name.insert(contentsOf: tempChar, at: name.startIndex)
            }
            error = false
        }
    } while error
    return name
}

let bullet = Int.random(in: 0..<6)
var namePlayer1 = SetName(playerNum: 1)
var namePlayer2 = SetName(playerNum: 2)
print("-------------------------------")
print("Jugador 1:", namePlayer1, "Jugador 2:", namePlayer2)


