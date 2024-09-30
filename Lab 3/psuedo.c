

int main(){

int frame[12][12];
int window[4][4];

int SADfx, SADfy = 0;
int fx, fy, wx, wy;


fx = sizeof(frame[0]);
fy = sizeof(frame[0]);
wx = sizeof(window[0]);
wy = sizeof(window[0]); // store/get the size of the frame and window

int k,l;                // loop variables / t0 and t1
double SAD = 99999999999;
double temp = 0;    

int centerX = fx / 2;
int centerY = fy / 2;
int radius = fx / 2;    // maximum radius is half of the frame size
int direction = 0;      // 0: right, 1: down, 2: left, 3: up

while (radius >= 0) {
    int x = centerX - radius;   // start from the top left corner of the square
    int y = centerY - radius;   // subtract the radius to get the top left corner of the square

    for (int step = 0; step < radius * 2; step++) {
        if (x >= 0 && x < fx - wx && y >= 0 && y < fy - wy) {   // check if the window is inside the frame with x as the left most side of the window 
            temp = 0;
            for (k = 0; k < wx; k++) {
                for (l = 0; l < wy; l++) {
                    temp += abs(frame[x + k][y + l] - window[k][l]);
                }
            }
            if (temp < SAD) {
                SAD = temp;
                SADfx = x;
                SADfy = y;
            }
        }

        switch (direction) {
            case 0: x++; break; // right
            case 1: y++; break; // down
            case 2: x--; break; // left
            case 3: y--; break; // up
        }
    }

    direction = direction + 1; // change the direction

    if (direction == 4) { 
        radius--;       // if we have completed a circle, decrease the radius
        direction = 0;  // reset the direction
    }

    
    
}
}
