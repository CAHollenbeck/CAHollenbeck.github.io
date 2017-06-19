class WhileIfElse {
    public static void main(String[] args) {
	int i = Integer.parseInt(args[0]);
    	while(i > 25) {
		if (i / 2 == 0) {
			System.out.println("even!");
		}
		else {
			System.out.println("odd!");
		}
		i = i - 1;
	}
    }
}
