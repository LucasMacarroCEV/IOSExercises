
import Foundation

func romanNumeralTranslator(romanNum: String) -> Int{
    var prevValue = 0
    var total = 0
    
    for var char in romanNum{
        char = Character(char.uppercased())

        let value = romanNumerals[char]!
        
        if value > prevValue{
            total += value - 2*prevValue
        } else{
            total += value
        }
        
        prevValue = value
    }
    
    return total
}

func Exercise6(){
    var error: Bool
    var romanNum = ""
    
    print("Introduce una cifra usando números romanos:")
    repeat{
        error = false
        
        romanNum = readLine()!
        for var x in romanNum{
            x = Character(x.uppercased())
            if !romanNumerals.keys.contains(x){
                print("Error: Introduce un número válido.")
                error = true
            }
        }
    } while error
    let translatedNum = romanNumeralTranslator(romanNum: romanNum)
    print(romanNum + " = " + String(translatedNum))
}
