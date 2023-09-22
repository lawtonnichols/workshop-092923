#include <cstdio>
#include <cstring>
#include <cstdlib>
using namespace std;

bool isCorrect(int password) {
  if (password * password + password == 1806) {
    return true;
  } else {
    return false;
  }
}

int main() {
  char str[100];

  printf("Enter the password: ");
  fgets(str, 100, stdin);
  str[strlen(str)-1] = '\0'; // remove the '\n' from the input string

  int num = atoi(str);

  if (isCorrect(num)) {
    printf("Access granted :)\n");
  } else {
    printf("Access denied! :(\n");
  }

  return 0;
}
