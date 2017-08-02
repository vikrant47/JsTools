
import java.io.*;

class GFG {
    
    public static int[] split(String str, String splitter) {
        String starr[] = str.split(splitter);
        int[] arr = new int[starr.length];
        for (int i = 0; i < starr.length; i++) {
            arr[i] = Integer.parseInt(starr[i]);
        }
        return arr;
    }
    
    public static String getWordsUsingDictionary(int index, String[] dictionary, String str) {
        if (index == dictionary.length) {
            return "";
        }
        if (str.indexOf(dictionary[index]) >= 0) {
            return dictionary[index] + " " + getWordsUsingDictionary(index++, dictionary, str.replace(dictionary[index], ""));
        } else {
            return getWordsUsingDictionary(index++, dictionary, str);
        }
    }
    
    public static void execute(BufferedReader bf) throws IOException {
        String[] dictionary = bf.readLine().split(" ");
        String input = bf.readLine();
        for (int i = 0; i < dictionary.length - 1; i++) {
            
        }
        System.out.print(getWordsUsingDictionary(0, dictionary, input));
    }
    
    public static void main(String[] args) throws IOException {
        BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));
        int t = Integer.parseInt(bf.readLine());
        for (int i = 0; i < t; i++) {
            execute(bf);
            System.out.println();
        }
    }
}
