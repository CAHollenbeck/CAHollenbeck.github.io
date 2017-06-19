class If {
    public static void main(String[] args) {
	    int firstArg = Integer.parseInt(args[0]);
	    if_method(firstArg);
    }
    public static void if_method(int n) {
    	if (n > 1) {
		System.out.println("true!");
	}
	else {
		System.out.println("false!");
	}
    }
}
