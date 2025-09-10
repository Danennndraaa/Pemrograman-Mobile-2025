void main(){
  for (int index = 10; index < 27; index++) {
    if (index == 21) {
      break; // keluar dari loop saat index = 21
    } else if (index > 1 || index < 7) {
      continue; // lompat ke iterasi berikutnya
    }
    print(index);
  }

}