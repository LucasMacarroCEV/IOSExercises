
import Foundation

func Exercise2(){
    var error = false
    var ans: String

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
    func Roulette(namePlayer1:String, namePlayer2:String, bullet:Int){
        var currentTurn: Int = 1
        var currentName: String
        var shoots = [Int]()
        var shoot: Int
        
        while true{
            if currentTurn == 1{currentName = namePlayer1} else{currentName = namePlayer2}
            print("Es el turno de:", currentName)
            
            repeat{
                print("Pulsa ENTER para disparar.")
                let ans = readLine()!
                if ans.isEmpty{error = false} else{error = true}
            } while error
            
            repeat{
                shoot = Int.random(in: 0..<6)
            } while shoots.contains(shoot)
            if shoot == bullet{
                print("PUM!", currentName, "ha muerto.")
                break
            } else {
                print("CLICK!", currentName, "se ha salvado.")
                shoots.append(shoot)
                currentTurn = (currentTurn == 1) ? 2 : 1
            }
            print("-------------------------------")
        }
    }

    while true{
        let bullet = Int.random(in: 0..<6)
        let namePlayer1 = SetName(playerNum: 1)
        let namePlayer2 = SetName(playerNum: 2)
        print("-------------------------------\nBienvenido al juego de la Ruleta Rusa\nJugador 1:  " + namePlayer1 + "\nJugador 2:  " + namePlayer2 + "\n-------------------------------")
        Roulette(namePlayer1: namePlayer1, namePlayer2: namePlayer2, bullet: bullet)
        print("-------------------------------")
        repeat{
            print("¿Quieres jugar otra vez?    S/N")
            ans = readLine()!
            if (ans != "n" && ans != "N") && (ans != "s" && ans != "S"){
                print("Error: Teclea una opcion válida.")
                error = true
            } else{error = false}
        } while error
        if ans == "n" || ans == "N"{break}
        else if ans == "s" || ans == "S"{print("Preparando el nuevo juego...\n")}
    }
}
