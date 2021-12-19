/*
 Given an array of integers A consisting of only 0 and 1.

 Find the maximum length of a contiguous subarray with equal number of 0 and 1.



 Input Format

 The only argument given is the integer array A.
 Output Format

 Return the maximum length of a contiguous subarray with equal number of 0 and 1.
 Constraints

 1 <= length of the array <= 100000
 0 <= A[i] <= 1
 For Example

 Input 1:
     A = [1, 0, 1, 0, 1]
 Output 1:
     4
     Explanation 1:
         Subarray from index 0 to index 3 : [1, 0, 1, 0]
         Subarray from index 1 to index 4 : [0, 1, 0, 1]
         Both the subarrays have equal number of ones and equal number of zeroes.

 Input 2:
     A = [1, 1, 1, 0]
 Output 2:
     2
 */

import Foundation

class Solution {
    func solve(_ A: inout [Int]) -> Int {

        var ans = 0
        var dict = [Int : Int]()
        dict[0] = -1
        var sum = 0
        for i in 0..<A.count {
            if A[i] == 0 {
                sum = sum - 1
            } else {
                sum = sum + 1
            }
            if dict[sum] != nil {
                let index: Int = dict[sum] ?? 0
                let length = i - index
                if length > ans {
                    ans = length
                }
            } else {
                dict[sum] = i
            }
        }
        return ans
    }
}
