public class StringArrayTest {

    public static List<String> generateStringArray(Integer n)
    {
        List<String> stringList = new List<String>();
        String s= '';
        for(Integer i=0 ; i<n ;i++)
        {
            s ='Test '+i;
            stringList.add(s);
        }
      //  System.debug('Size :'+stringList.size());
        return stringList;
    }
}