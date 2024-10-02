
import Foundation

let romanNumerals: [Character:Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]

func Exercise5(){
    var translatedNum = 0
    var num: String = ""
    var error = false
    
    print("Introduce una cifra usando números romanos:")
    repeat{
        error = false
        translatedNum = 0
        
        num = readLine()!
        for var x in num{
            x = Character(x.uppercased())
            if romanNumerals.keys.contains(x){
                translatedNum += romanNumerals[x]!
            }
            else{
                print("Error: Introduce un número válido.")
                error = true
            }
        }
    } while error
    print(num + " = " + String(translatedNum))
}
