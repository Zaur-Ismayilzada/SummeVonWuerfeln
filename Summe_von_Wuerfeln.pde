int[] arr = new int[11];
size(800, 600);
/*
1 + 1 = 2, 2 + 1 = 3, 3 + 1 = 4, 6 + 1 = 7
1 + 2 = 3, 2 + 2 = 4, 3 + 6 = 9, 6 + 6 = 12
1 + 3 = 4, 2 + 3 = 5, 4 + 1 = 5
1 + 4 = 5, 2 + 4 = 6, 4 + 6 = 10
1 + 5 = 6, 2 + 5 = 7, 5 + 1 = 6
1 + 6 = 7, 2 + 6 = 8, 5 + 6 = 11

Summe: [2, 12]
*/
for(int i = 0; i < 1000; i++){
  int a = int(random(1, 7));
  int b = int(random(1, 7));
  int idx = a + b - 2;
  int temp = arr[idx];
  temp++;
  arr[idx] = temp;
}

for(int i = 0; i < arr.length; i++){
  println(arr[i]);
  fill(random(255), random(255), random(255));
  float rate = (300 * arr[i]) / 90.90;
  rect(i * 72.72, 600 - rate, 72.72, rate);
  textSize(24);
  fill(0);
  text(str(arr[i]), i * (800 / 11) + 10, 570);
  
}
