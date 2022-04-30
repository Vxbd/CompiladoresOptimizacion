#include <sys/time.h>
#include <stdio.h>
#include <stdlib.h>

void coidgo();

int N;
int ITER;

int main(int argc, char const *argv[])
{
    struct timeval inicio, final;
    double tempo;

    if (argc == 3)
    {
        N = atoi(argv[1]);
        ITER = atoi(argv[2]);
    }
    else
    {
        N = 1000;
        ITER = 1000000;
    }

    gettimeofday(&inicio,NULL);
    coidgo();
    gettimeofday(&final,NULL);
    tempo = (final.tv_sec-inicio.tv_sec+(final.tv_usec-inicio.tv_usec)/1.e6);

    printf("%lf", tempo);

    return 0;
}


void coidgo()
{
    int i, j;

    typedef struct {float x, y, z;} nuevotipo;

    nuevotipo* v1 = (nuevotipo*) malloc(sizeof(nuevotipo)*N);
    nuevotipo* v2 = (nuevotipo*) malloc(sizeof(nuevotipo)*N);
    nuevotipo* v3 = (nuevotipo*) malloc(sizeof(nuevotipo)*N);

    for(j=0; j<ITER; j++){
        for(i=0; i<N; i++) {
            v3[i].x = v1[i].x + v2[i].x;
            v3[i].y = v1[i].y - v2[i].y;
            v3[i].z = v1[i].z * v2[i].z;
        }
    }
}
