List<int> mergeSort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }
  int mid = (array.length / 2).floor();
  List<int> first = array.sublist(0, mid);
  List<int> last = array.sublist(mid);
  return join(mergeSort(first), mergeSort(last));
}

List<int> join(List<int> first, List<int> last) {
  List<int> newarray = List.filled(first.length + last.length, 0);
  var i = 0, j = 0, k = 0;
  while (i < first.length && j < last.length) {
    if (first[i] < last[j]) {
      newarray[k++] = first[i++];
    } else {
      newarray[k++] = last[j++];
    }
  }
  while (i < first.length) {
    newarray[k++] = first[i++];
  }
  while (j < last.length) {
    newarray[k++] = last[j++];
  }
  return newarray;
}

