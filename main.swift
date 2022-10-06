

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = ["a", "Bu", "all", "ba"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
var integers = unsortedIntegers
var array = [String]()
while let line = readLine() {
    array.append(line)
}
    func lowercase(array: inout [String]) {
    for x in 0 ..< array.count{
        array[x] = array[x].lowercased()
    }
}
func swap(array: inout [String], firstIndex: Int, secondIndex: Int) {
    let swaps = array[firstIndex]
    array[firstIndex] = array[secondIndex]
    array[secondIndex] = swaps
}
//print("Pass: 0, Swaps: 0/0, Array: \(array)")
func insertionSort(array: inout [String]) {
lowercase(array: &array)
    var a = array
    for x in 1..<a.count {
        var y = x
        while y > 0 && a[y] < a[y - 1] {
            swap(array: &a, firstIndex: y, secondIndex: y-1)
            y -= 1
        }
    }
    print(a)   

}
insertionSort(array: &array)
