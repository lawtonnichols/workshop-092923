#include <iostream>
using namespace std;

int main() {
  /*
  int i = 1;
  while (i <= 10) {
    cout << i << endl;
    i++;
  }
  */
  
  // the following works the same as the commented code above:
  
  int i = 1;

loop:
  if (i > 10) { // cmp i, 10
    goto done;  // jg done
  }
  // if we didn't take the goto, we're still here!
  // this is where the loop body goes
  cout << i << endl;
  i++;
  // go back to the condition check
  goto loop;    // jmp loop

done:

  return 0;
}
