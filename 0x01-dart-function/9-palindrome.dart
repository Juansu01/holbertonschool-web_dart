bool isPalindrome(String s) {

    if (s.length < 3) {
        return false;
    }
    String reversed = s.split('').reversed.join();
    return s == reversed;
}
