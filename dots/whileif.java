class WhileIf {
    public static void main(String[] args) {
    	int a1 = Integer.parseInt(args[0]);
	while(true) {
		if (a1 / 2 == 0) {
			System.out.println("even!");
		}
		a1 = a1 - 1;
	}
    }
}
