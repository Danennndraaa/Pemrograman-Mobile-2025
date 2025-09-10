void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) {
      break; // stop saat index = 21
    } else if (index >= 15 && index <= 17) {
      continue; // lewati angka 15,16,17
    }
    print(index);
  }
}

/*
Jika, continue untuk kondisi tertentu (misalnya skip angka 15–17)
for (int index = 10; index < 27; index++) {
 if (index == 21) {
 break; // stop saat index = 21
 } else if (index >= 15 && index <= 17) {
 continue; // lewati angka 15,16,17
 }
 print(index);
}
Output:
lalu berhenti saat bertemu 21.
*/