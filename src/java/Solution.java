
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    static int findStreets(int n, int[][] street) {
        // Complete this function
    }

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int t = in.nextInt();
        for (int a0 = 0; a0 < t; a0++) {
            int n = in.nextInt();
            int m = in.nextInt();
            int[][] street = new int[m][2];
            for (int street_i = 0; street_i < m; street_i++) {
                for (int street_j = 0; street_j < 2; street_j++) {
                    street[street_i][street_j] = in.nextInt();
                }
            }
            int result = findStreets(n, street);
        }
    }
}
