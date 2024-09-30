// Lab 3 Psuedocode.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

int main(void) {

    int frame[16 * 16] = { 7, 5, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,
             7, 5, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,
              7, 5, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,
             7, 5, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,
             0, 4, 2, 3, 4, 5, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60,
             0, 5, 3, 4, 5, 6, 30, 35, 40, 45, 0, 0, 0, 0, 70,  75,
             0, 6, 12, 18, 24, 30, 36, 42, 48, 54, 0, 0, 0, 0, 84, 90,
             0, 4, 8, 8, 8, 8, 42, 49, 56, 63, 0, 0, 0, 0, 98, 105,
             0, 1, 8, 8, 8, 8, 48, 56, 64, 72, 0, 0, 0, 0, 112, 120,
             0, 1, 8, 8, 8, 8, 54, 63, 72, 81, 90, 99, 108, 117, 126, 135,
             0, 10, 8, 8, 8, 8, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150,
             0, 11, 22, 33, 44, 55, 66, 77, 88, 99, 110, 121, 132, 143, 154, 165,
             9, 9, 9, 9, 48, 60, 72, 84, 96, 108, 120, 132, 0, 1, 2, 3,
             9, 9, 9, 9, 52, 65, 78, 91, 104, 114, 130, 143, 1, 2, 3, 4,
             9, 9, 9, 9, 56, 70, 84, 98, 112, 126, 140, 154, 2, 3, 4, 5,
             9, 9, 9, 9, 60, 75, 90, 105, 120, 135, 150, 165, 3, 4, 5, 6 };
        
    int window[4*8] = { 0, 0, 0, 0, 0, 0 ,0 , 0,
                        0, 0, 0, 0, 0, 0 ,0 , 0,
                        0, 0, 0, 0, 0, 0 ,0 , 0, 
                        0, 0, 0, 0, 0, 0 ,0 , 0 };


    int SADfx = 0, SADfy = 0;
    int fx, fy, wx, wy;


    fx = 16;
    fy = 16;
    int windowR = 4;
    wx = 3;
    wy = 7;

    int k, l;                // loop variables / t0 and t1
    double SAD = 99999999999;
    double temp = 0;

    int centerX = fx / 2;
    int centerY = fy / 2;
    int radius = fx / 2;    // maximum radius is half of the frame size
    int direction = 0;      // 0: right, 1: down, 2: left, 3: up
    int x = centerX - radius;   // start from the top left corner of the square
    int y = centerY - radius;   // subtract the radius to get the top left corner of the square
    while (radius >= 0) {
        //int x = centerX - radius;   // start from the top left corner of the square
        //int y = centerY - radius;   // subtract the radius to get the top left corner of the square
        
        for (int step = 0; step < (radius * 2); step++) {
            //cout << x << "x " << y << "y " << endl;            debugging outputs
            if (x >= 0 && y >= 0 && (x + wx) < fx && (y + wy) < fy) {   // check if the window is inside the frame with x as the left most side of the window 
                temp = 0;
                for (k = 0; k <= wx; k++) {
                    for (l = 0; l <= wy; l++) {
                        temp += abs(frame[((y + k) * fx ) + (x + l)] - window[(k * windowR) + l]);
                    }
                }
                if (temp < SAD) {
                    SAD = temp;
                    SADfx = y;
                    SADfy = x;
                    cout << SADfx << "SADfx " << SADfy << "SADfy" << endl;
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
        switch (direction) {
        case 0: x = centerX - radius; y = centerY - radius;
        case 1: x = centerX + radius - 1; y = centerY - radius;
        case 2: x = centerX + radius - 1; y = centerY + radius - 1;
        case 3: x = centerX - radius; y = centerY + radius - 1;
        }
    }

    cout << SADfx << ", " << SADfy << endl;


    return 0;
}


