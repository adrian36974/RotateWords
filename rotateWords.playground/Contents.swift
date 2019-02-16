import UIKit

//Comparacion ASCII
func compare(_ w1: String,_ w2: String) -> Bool {
    if (UnicodeScalar(String(w1.prefix(1)))!.value > UnicodeScalar(String(w2.prefix(1)))!.value ) {
        return true
    }
    return false
}

func findRotation(_ words: [String]) -> Int{
    var index = 0
    for i in stride(from: 0, to: words.count - 1, by: 1) {
        if compare(words[i].lowercased(), words[i+1].lowercased()) {
            index = i + 1
            break
        }
    }
    return index
}

var rotatedWords =  [
        "pepe",
        "retrógado",
        "suplantar",
        "uruguay",
        "xonofobia",
        //"zurco",
        "asíntota",
        "barba",
        "baquero",
        "engendar",
        "karla",
        "oracion"
]

print(findRotation(rotatedWords))
