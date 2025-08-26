//MARK: Removeduplicat
func removeduplicate(arr : [Int]) -> [Int] {
    var uniqueArr : [Int] = []
    
    for i in 0..<arr.count {
        var isDuplicate = false
        for j in 0..<uniqueArr.count {
            if arr[i] == uniqueArr[j] {
                isDuplicate = true
                break
            }
        }
        if !isDuplicate {
            uniqueArr.append(arr[i])
        }
    }
    return uniqueArr
}
 
print(removeduplicate(arr:[1,2,1,2,3,2,4,3,5,6]))
 
//MARK: Sec largest
func secLargest(arr : inout [Int]) {
    var max = arr[0]
    var secMax = arr[0]
    
    for i in arr {
        if i > max {
            secMax = max
            max = i
            
        } else if i > secMax && i != max {
          secMax = i
        }
    }
    print(secMax)
}
 
var a = [1,2,3,2,53,3]
secLargest(arr : &a)
 
//MARK: Swap Number
func swapArr(arr : inout [Int]){
    let n = arr.count
    for i in 0..<n/2 {
        arr[i] = arr[i] + arr[n - 1 - i]
        arr[n - 1 - i] = arr[i] - arr[n - 1 - i]
        arr[i] = arr[i] - arr[n - 1 - i]
    }
  print(arr)
}
var numbers = [1, 2, 32, 1, 3, 2, 3]
swapArr(arr: &numbers)
 
//MARK: SortArray
 
func sortArray(arr : inout [Int]) {
    for i in 0..<arr.count {
        for j in 0..<arr.count - i - 1{
            if arr[j] > arr[j + 1] {
                let temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
    print(arr)
}
var num = [1, 2, 32, 1, 3, 2, 3]
sortArray(arr : &num)
//MARK:  palindrome
 func isPalindrome(arr : String) -> Bool {
     let char = Array(arr.lowercased())
     
     var start = 0
     var end = char.count - 1
 
    while start < end {
        if char[start] != char[end] {
            return false
        }
        start += 1
        end -= 1
    }
    return true
 }
 print(isPalindrome(arr : "lowqewol"))

//MARK: favnonicSr Number

func fevNoS(num : Int) -> [Int] {
    
    guard num > 0 else {return [] }
    if num == 1  { return [0] }
    if num == 2  { return [0 ,1] }
 
    var series = [0 , 1]
    for _ in 2..<num {
        let next = series[series.count - 1] + series[series.count - 2]
        series.append(next)
        
    }
    return series
}
print(fevNoS(num: 12))
//MARK: check Prime Number

func isPrime(_ number: Int) -> Bool {
    if number <= 1 { return false }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}
//MARK: Get Prime Number
func getPrime(num : Int) -> [Int] {
    var numbPrime : [Int] = []
    for i in 1...num {
        if isPrime(i) {
            numbPrime.append(i)
        }
    }
    return numbPrime
}

print(getPrime(num : 100))
print(isPrime(10))

//MARK: Reverse String
var str = "hello Word"
var storeStr = ""
for i in str {
    storeStr = "\(i)" + storeStr
}
print(storeStr)

var arr = [1,3,2,4,9,24,4,2]
var test = arr.filter{ $0 % 2 == 0 }
print(test)

//MARK: Merge two sorted arrays

var arr2 =  [1,3,2,4,9,24,4,2]
var test2 = [3,235,45,657,6,54,1]
var test3 = arr2 + test2
print(test3.sorted())
//MARK: Move Zero

func moveZero(arr : [Int]) -> [Int] {
    var nonZero : [Int] = []
    for i in arr {
        if i != 0 {
        nonZero.append(i)
        }
    }
    for j in arr {
        if j == 0 {
         nonZero.append(j)
        }
    }
    return nonZero
}
print(moveZero(arr: [1, 3, 2, 40, 0, 0, 4, 3]))
//MARK: Rotare Array
func rotateArr(arr: [Int], rotat: Int) {
    let n = arr.count
    let k = rotat % n
    let rotated = Array(arr[k...] + arr[..<k])
    
    print(rotated)
}
rotateArr(arr :[1,2,3,4,22,5,1] , rotat : 4)

//MARK: Kth longest number
func kThLargest( arr : [Int], n : Int)-> Int {
let num = arr.count
let v = arr.sorted()
return v[num - n]
    
}
print(kThLargest(arr : [1,2,3,1,3,5,6,67,4] , n : 5))
