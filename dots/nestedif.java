class NestedIf {
    public static void main(String[] args) {
	int firstArg = Integer.parseInt(args[0]);
    	if (firstArg > 1) {
		if (firstArg < 1) {
			System.out.println("true & true!");
		}
		else {
			System.out.println("true & false!");
		}

	}
	else {
		if (firstArg > 5) {
			System.out.println("false -> true!");
		}
		else {
			System.out.println("false -> false!");
		}
	}
    }
}
