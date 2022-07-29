@isTest
public with sharing class SchemaBaseTests {

   
    public SchemaBaseTests() {
       
    }

    @isTest
    public static void testIt() {
        SchemaBase sb = new SchemaBase();
        List<String> names = sb.getSObjectNames('account');
        system.Debug(names);
        List<String> templist = new List<String>();
        templist.add(names.get(0));
        List<Schema.DescribeSObjectResult> dr = sb.describeSObjectResult(templist);
        system.debug(dr);
    }
}
