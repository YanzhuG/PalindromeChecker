public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2=space(word);
  String word3=word2.toLowerCase();
  String word4=letter(word3);
  if(word4.equals(reverse(word4)))
  return true;
  else//your code here
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int x=0;x<str.length();x++)
    sNew+=str.substring(str.length()-1-x,str.length()-x);//your code here
    return sNew;
}
public String space(String strinx){
  String strin = new String();
  for(int x=0;x<strinx.length();x++){
    if(!strinx.substring(x,x+1).equals(" "))
    strin+=strinx.substring(x,x+1);
  }
  return strin;
}
public String letter(String stri){
  String stria = new String();
  for(int x =0;x<stri.length();x++){
    if(Character.isLetter(stri.charAt(x))==true){
      stria+=stri.substring(x,x+1);
    }
  }
  return stria;
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
