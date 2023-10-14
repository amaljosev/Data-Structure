List<int> quickSort(List<int> array) {
  quickSortHelper(array, 0, array.length - 1);
  return array;
}

void quickSortHelper(List<int> array, int start, int end) {
  if (start >= end) {
    return;
  }
  int pivot = start;
  int left = start + 1;
  int right = end;
  while (left <= right) {
    if (array[left] > array[pivot] && array[right] < array[pivot]) {
      swap(array, left, right);
      right--;
      left++;
    }
    if (array[left] < array[pivot]) {
      left++;
    }
    if (array[right] > array[pivot]) {
      right--;
    }
  }
  swap(array, right, pivot);
  quickSortHelper(array, start, right - 1);
  quickSortHelper(array, right + 1, end);
}

void swap(List<int> array, int i, int j) {
  int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
}

// void display(List<int> array) {
//   List<int> result = quickSort(array);
//   for (var i = 0; i < array.length; i++) {
//     print(result[i]);
//   }
// }

void main(List<String> args) {
  List<int> array = [50, 10, 30, 60, 5, 15];
  List<int> result = quickSort(array);
  print(result);
}