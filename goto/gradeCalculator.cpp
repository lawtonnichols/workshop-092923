#include <iostream>
using namespace std;

int main() {
  cout << "Enter a grade as a percentage: ";
  double grade;
  cin >> grade;

  /*
  if (grade >= 90.0) cout << "A" << endl;
  else if (grade >= 80.0) cout << "B" << endl;
  else if (grade >= 70.0) cout << "C" << endl;
  else if (grade >= 60.0) cout << "D" << endl;
  else cout << "F" << endl;
  */

  // the following works the same as the commented code above:
  
  if (grade < 90.0) goto checkB; // cmp grade, 90.0; jl checkB;
  cout << "A" << endl;
  goto done;
checkB: // this is a *label*
  if (grade < 80.0) goto checkC;
  cout << "B" << endl;
  goto done;
checkC:
  if (grade < 70.0) goto checkD;
  cout << "C" << endl;
  goto done;
checkD:
  if (grade < 60.0) goto F;
  cout << "D" << endl;
  goto done;
F:
  cout << "F" << endl;

done:

  return 0;
}
