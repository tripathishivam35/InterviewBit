//
//  Diffk||.swift
//  InterviewBitSolutons (iOS)
//
//  Created by Shivam Tripathi on 19/12/21.
//
/*
 Given an array A of integers and another non negative integer k, find if there exists 2 indices i and j such that A[i] - A[j] = k, i != j.

 Example :

 Input :

 A : [1 5 3]
 k : 2
 Output :

 1
 as 3 - 1 = 2

 Return 0 / 1 for this problem.
 */


import Foundation

class Diffk {
    func diffPossible(_ A: [Int], _ B: inout Int) -> Int {
        if (A.count < 2) {
            return 0
        }
        var dict = [Int: Int]()
        for i in 0..<A.count {
            if (dict[A[i]-B]) == nil && (dict[A[i]+B] == nil) {
                dict[A[i]] = i
            } else {
                return 1
            }
        }
        return 0
    }
}
