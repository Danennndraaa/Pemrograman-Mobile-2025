void main() {
   String test = "test2";
   if (test == "test1") {
      print("Test1");
   } else if (test == "test2") {
      print("Test2");
   } else {
      print("Something else");
   }

   if (test == "test2") print("Test2 again");
}
/* 1. Variabel test diberi nilai "test2".
String test = "test2";
2. Percabangan pertama (if...else if...else):
• if (test == "test1") → salah karena nilai test = "test2".
• else if (test == "test2") → benar, maka perintah print("Test2"); dijalankan.
• Jadi output pertama yang muncul:
Test2
3. Percabangan kedua (if tunggal):
• if (test == "test2") → benar, sehingga perintah print("Test2 again"); dijalankan.
• Output kedua yang muncul:
Test2 again
*/