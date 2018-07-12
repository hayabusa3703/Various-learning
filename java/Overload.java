class Overload {
  public static void main(String[] args) {
    printData(realName("tanaka", "kyouhei"), 27);

    printData(realName("stan", "eruron", "demurosu"), 18);
  }

  public static void printData(String name, int age) {
    System.out.println("私の名前は" + name + "です");
    System.out.println("年齢は" + age + "歳です");
  }

  public static String realName(String first, String last) {
    return first + " " + last;
  }

  public static String realName(String first,String middle, String last){
    return first + " " + middle + " " + last;
  }
}
