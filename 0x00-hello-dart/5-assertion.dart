void main(List<String> args) {
  /*
  Write Your code below 
   */
   int nb = int.parse(args[0]);
   assert(nb >= 80, 'Uncaught Error: Assertion failed: The score must be bigger or equal to 80');
   print('You Passed');

}
