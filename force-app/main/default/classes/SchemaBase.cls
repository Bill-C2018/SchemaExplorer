public with sharing class SchemaBase {



    public SchemaBase() {

        
    }

    public  List<String> getSObjectNames(String contains) {

        Map<String, Schema.SObjectType> sobjects = Schema.getGlobalDescribe();
        List<String> names = new List<String>();
        for(String s: sobjects.keySet()) {
            s = s.toLowerCase();
            if(s.contains(contains)) {
                names.add(s);
            }
        }

        system.debug(names);
        return names;
    }

    public List<Schema.DescribeSObjectResult> describeSObjectResult(List<String> type) {
        return Schema.describeSObjects(type);
    }
}
