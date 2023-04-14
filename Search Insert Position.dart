class Solution {
  int searchInsert(List<int> nums, int target) {
    if (nums[nums.length - 1] < target) {
      return nums.length;
    }
    var left = 0;
    var right = nums.length - 1;
    while (left < right) {
      var mid = left + (right - left) ~/ 2;
      if (nums[mid] < target) {
        left = mid + 1;
      } else {
        right = mid;
      }
    }
    return left;
  }
}


void main() {
  final result = Solution();
  List<int> nums1 = [1, 3, 5, 6];
  int target1 = 5;
  final check = result.searchInsert(nums1, target1);
  print(check);
  print('\n');
  final result2 = Solution();
  List<int> nums2 = [1, 3, 5, 6];
  int target2 = 2;
  final check2 = result.searchInsert(nums2, target2);
  print(check2);
  print('\n');
  final result3 = Solution();
  List<int> nums3 = [1, 3, 5, 6];
  int target3 = 7;
  final check3 = result.searchInsert(nums3, target3);
  print(check);
  print('\n');
}
