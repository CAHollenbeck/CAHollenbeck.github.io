class Fibonacci{
  public static void main(String[] args){
    int a1 = Integer.parseInt(args[0]);	
    fibonacci(a1);
  }
  public static int fibonacci(int n) {
    if(n<=1)
      return n;
    else
      return fibonacci(n-1)+fibonacci(n-2);
  }
}
