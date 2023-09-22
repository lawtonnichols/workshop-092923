#include <cstdio>
#include <cstring>
#include <cstdlib>
using namespace std;

int main() {
  char str[100];

  printf("Enter the password: ");
  fgets(str, 100, stdin);
  str[strlen(str)-1] = '\0'; // remove the '\n' from the input string

  int num = atoi(str);

  if (num % 8 == 1) {
    printf("Access granted :)\n");
  } else {
    printf("Access denied! :(\n");
  }

  return 0;
}
