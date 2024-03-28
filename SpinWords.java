public class SpinWords {
    public static void main(String args[]) {
        System.out.println(new SpinWords().spinWords("Hey fellow warriors"));
    }

    public String spinWords(String sentence) {
        String solution = "";
        String[] words = sentence.split(" ");
        
        for (int i = 0; i < words.length; i++) {
            if (words[i].length() >= 5) {
            solution += new StringBuilder(words[i]).reverse().toString();
            } else {
            solution += words[i];
            }
            
            if (i < words.length - 1) {
            solution += " ";
            }
        }
        return solution;
    }
}