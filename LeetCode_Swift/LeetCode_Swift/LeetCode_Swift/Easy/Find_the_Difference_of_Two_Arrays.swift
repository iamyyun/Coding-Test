//
//  Find_the_Difference_of_Two_Arrays.swift
//  LeetCode_Swift
//
//  Created by Yunju Yang on 8/8/2024.
//

import Foundation

// 2215.Find the Difference of Two Arrays : https://leetcode.com/problems/find-the-difference-of-two-arrays
struct Find_the_Difference_of_Two_Arrays {
    func solution(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var res1 = [Int]()
        var numsOne = Set(nums1), numsTwo = Set(nums2)
        
        for n1 in numsOne {
            if numsTwo.contains(n1) {
                numsTwo.remove(at: numsTwo.firstIndex(of: n1)!)
            } else {
                res1.append(n1)
            }
        }
        
        return [res1, Array(numsTwo)]
    }
}
