import Foundation


// Калькулятор
func addition(_ num1: Double, _ num2: Double) -> Double {
    return num1 + num2
}

func subtraction(_ num1: Double, _ num2: Double) -> Double {
    return num1 - num2
}

func multiplication(_ num1: Double, _ num2: Double) -> Double {
    return num1 * num2
}

func division(_ num1: Double, _ num2: Double) -> Double? {
    guard num2 != 0 else {
        print("Error: Division by zero")
        return nil
    }
    return num1/num2
}

func performOperation(_ num1: Double, _ num2: Double, _ operation: String) {
    var result: Double?

    switch operation {
    case "+":
        result = addition(num1, num2)
        
    case "-":
        result = subtraction(num1, num2)
        
    case "*":
        result = multiplication(num1, num2)
        
    case "/":
        result = division(num1, num2)
        
    default:
        print("Invalid operator")
        return
    }

    if let result = result {
        print("Result:", result)
    }
}

print("Enter the first number: ")
if let input1 = readLine(), let num1 = Double(input1) {
    print("Enter the second number: ")
    if let input2 = readLine(), let num2 = Double(input2) {
        print("Enter the operator: ")
        if let operation = readLine() {
            performOperation(num1, num2, operation)
        } else {
            print("Invalid operator")
        }
    }
    
}



//Работа со стрингом
import Foundation

func combineStrings() {
    print("\n\n1. Combining strings")
    print("Enter the first line:")
    guard let line1 = readLine() else { return }
    
    print("Enter the second line:")
    guard let line2 = readLine() else { return }
    
    let combinedString = line1 + line2
    print("Combined String:", combinedString)
}

func flipString() {
    print("\n2. Flip a line")
    print("Enter a string:")
    guard let inputString = readLine() else { return }
    
    let reversedString = String(inputString.reversed())
    print("Reversed String:", reversedString)
}

func countCharacters() {
    print("\n3. Counting characters")
    print("Enter a string:")
    guard let inputString = readLine() else { return }
    
    let characterCount = inputString.filter { !$0.isWhitespace }.count
    print("Character Count (excluding spaces):", characterCount)
}

func searchSubstring() {
    print("\n4. Search for a substring")
    print("Enter a string:")
    guard let inputString = readLine() else { return }
    
    print("Enter a substring to search for:")
    guard let substring = readLine() else { return }
    
    if let range = inputString.range(of: substring) {
        let index = inputString.distance(from: inputString.startIndex, to: range.lowerBound)
        print("Index of the first occurrence of the substring:", index)
    } else {
        print("Substring not found in the string.")
    }
}

combineStrings()
flipString()
countCharacters()
searchSubstring()
