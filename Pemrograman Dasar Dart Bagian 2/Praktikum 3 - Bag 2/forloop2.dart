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
