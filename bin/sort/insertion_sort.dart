void insertionSort(List<int> arr) {
  int n = arr.length;
  
  for (int i = 1; i < n; i++) {
    int key = arr[i];
    int j = i - 1;
    
    // Compare and move elements to the right until the correct position is found
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
    
    arr[j + 1] = key;
  }
}

