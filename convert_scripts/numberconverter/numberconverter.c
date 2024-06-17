#include <stdio.h>
#include <string.h>
#include <stdlib.h>

/* Program där man skriver in ett nummer och hur man vill att det ska tolkas, t.ex. skriver in hex nummer som skrivs ut decimalt. iiii
 * TODO: Göra det mer elegeant, inte en lång if statement.
*/

void print_usage(void)
{
	printf ("usage: numberconverter [-h show this help message] [-xd <value> hexadecimal to decimal] [-od <value> octal to decimal] [-dx <value> decimal to hexadecimal] [-do <value> decimal to octal] [-ox <value> octal to hexadecimal] [-xo <value> hexadecimal to octal ]\n");
}

int main(int argc, char *argv[])
{
	if (argc != 3) {
		print_usage();
	  return 1;
  }

	else if (!strcmp(argv[1], "-xd")) {      
		int k;
		sscanf(argv[2], "%x", &k);
		printf("%#d\n", k);
	}
	
	else if (!strcmp(argv[1], "-h")) {
		print_usage();
	}

	else if (strcmp (argv[1], "-dx") == 0) {
		int k;
		k = atoi(argv[2]);
		printf("%#x\n", k);
	}

	else if (strcmp (argv[1], "-od") == 0) {
		int k;
		sscanf(argv[2], "%o", &k);
		printf("%d\n", k);
	}

	else if (strcmp (argv[1], "-do") == 0) {
		int k;
		k = atoi(argv[2]);
		printf("%#o\n", k);
	}

	else if (strcmp (argv[1], "-ox") == 0) {
		int k;
		sscanf(argv[2], "%o", &k);
		printf("%#x\n", k);
	}

	else if (strcmp (argv[1], "-xo") == 0) {
		int k;
		sscanf(argv[2], "%x", &k);
		printf("%#o\n", k);
	}

	else {
		printf("Unknown argument %s.\n", argv[1]);
		print_usage();
		return 1;
	}
}
