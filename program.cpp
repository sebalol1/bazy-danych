#include <stdio.h>
#include <vector>
#include <stack>
#include <list>

int nastdfs(int v);
void dfs(int v);

const int maxV = 20;
int odw[maxV];
int V = 0;
int macierzV[maxV][maxV];
std::stack<int, std::vector<int> > stos;

int main() {

	printf("Podaj liczbe wierzcholkow: ");
	scanf("%d", &V);

	int tabV[V][V];

	int i = 0, j = 0, s = 0;

	printf("\nZeruje tablice:\n");
	for (i = 0; i < V; i++) {
		for (j = 0; j < V; j++) {
			tabV[i][j] = 0;
			printf("%d ", tabV[i][j]);
		}
		printf("\n");
	}

	printf(
			"\nWprowadzanie krawedzi miedzy wierzcholkami\n1 = krawedz | 0 = brak krawedzi\n\n");

	int wprowadzana = 0;

	for (i = 0; i < V; i++) {
		for (j = i; j < V; j++) {
			printf("Krawedz: %d - %d ", i + 1, j + 1);
			scanf("%d", &wprowadzana);
			tabV[i][j] = wprowadzana;
			tabV[j][i] = wprowadzana;
		}
	}

	printf("\n");

	for (i = 0; i < V; i++) {
		for (j = 0; j < V; j++) {
			macierzV[i][j] = tabV[i][j];
			printf("%d ", tabV[i][j]);
		}
		printf("\n");
	}

	printf("\n");

	int licznik = 0;
	int stopien_grafu = 0;

	for (i = 0; i < V; i++) {
		for (j = 0; j < V; j++) {
			if (tabV[i][j] == 1) {
				licznik++;
				if (tabV[i][j] == 1 && i == j) {
					licznik++;
				}
				printf("%d - %d ", i + 1, j + 1);
			}
		}
		printf("Wierzcholek %d jest %d stopnia\n", i + 1, licznik);

		if (licznik >= stopien_grafu) {
			stopien_grafu = licznik;
		}
		licznik = 0;
	}

	printf("\nStopien grafu: %d\n", stopien_grafu);

	dfs(0);
	
	printf("\n\nJezeli graf przeszedl przez wszystkie wierzcholki grafu, to znaczy, ze jest spojny.\nW przeciwnym wypadku graf nie jest spojny.\n");

	return 0;
}

int nastdfs(int v) {

	int i;

	for (i = V - 1; i >= 0; i--)
		if ((macierzV[i][v] == 1) && (odw[i] == 0)) {
			odw[i] = 1;
			return (i);
		}

	return (-1);
}

void dfs(int v) {

	int u;
	int nastepny;
	printf("%d ", v + 1);
	odw[v] = 1;
	nastepny = nastdfs(v);
	while (nastepny != -1) {
		stos.push(nastepny);
		nastepny = nastdfs(v);
	}
	if (!stos.empty()) {
		u = stos.top();
		stos.pop();
		dfs(u);
	}
}
#include <stdio.h>
#include <vector>
#include <stack>
#include <list>

int nastdfs(int v);
void dfs(int v);

