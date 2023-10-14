List<int> selectionSort(List<int> arr) {
  int n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[i]) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
  return arr;
}
void main(List<String> args) {
  List<int>list=[0,88,4,25,6,4,7,11,5,8,99,3];
   print(list);
 List<int>newList= selectionSort(list); 

 print(newList);

}