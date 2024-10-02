
import Foundation

func SplitPhrase(phrase:String) -> Array<Substring>{
    let phraseArray = phrase.split(separator: " ")
    return phraseArray
}
func Censor(phraseArray: Array<Substring>) -> Array<Substring>{
    var newPhraseArray = [Substring]()
    
    for var word in phraseArray{
        if word.first!.lowercased() == "p" || word.first!.lowercased() == "j" || word.first!.lowercased() == "m"{
            var newWord = String(word.first!)
            word.remove(at: word.startIndex)
            for char in word{
                if char.isPunctuation{
                    newWord.append(char)
                }
                else{
                    newWord.append("*")
                }
            }
            newPhraseArray.append(Substring(newWord))
        } else{
            newPhraseArray.append(word)
        }
    }
    return newPhraseArray
}
func BuildNewPhrase(censoredPhraseArray: Array<Substring>) -> String{
    var censoredPhrase: String = ""
    for word in censoredPhraseArray{
        censoredPhrase.append(word + " ")
    }
    return censoredPhrase
}

func Exercise4(){
    print("Escribe una frase:")
    let phrase = readLine()!
    let phraseArray = SplitPhrase(phrase: phrase)
    let censoredPhraseArray = Censor(phraseArray: phraseArray)
    let censoredPhrase = BuildNewPhrase(censoredPhraseArray: censoredPhraseArray)
    print("Frase censurada:\n" + censoredPhrase)
}
