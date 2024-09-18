

int main(){

int frame[12][12];
int window[4][4];

int fx, fy, wx, wy = 0;
int fxs, fys, wxs, wys;

fxs = 12;
fys = 12;
wxs = 4;
wys = 4;
int i,j,k,l;
double SAD = 99999999999;
double temp = 0;

for (i = wx; i < fxs; i++){
    for (j = wy; j < fys; j++){
        temp = 0;
        for (k = wx; k < wxs; k++) {
            for (l = wy; l < wys; l++) {
                temp += abs(frame[i + k][j + l] - window[k][l]);
            }
        }
        if (temp < SAD) {
            SAD = temp;
        }
    }

}
