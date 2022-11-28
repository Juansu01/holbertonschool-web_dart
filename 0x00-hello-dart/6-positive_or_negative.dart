void main(List<String> args) {
  /*
  Write Your code below 
   */
   int nb = int.parse(args[0]);
   
   if (nb > 0) {
    print('$nb is positive');
   } else if (nb < 0) {
    print('$nb is negative');
   } else {
    print('0 is zero');
   }

}