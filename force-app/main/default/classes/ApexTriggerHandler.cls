public class ApexTriggerHandler {

    /*public static void CreateContact(List<Account> accList){
       List<Contact> conList = new List<Contact>();
        for(Account acc: accList){
            Contact con = new Contact();
            con.LastName = acc.Name;
            con.AccountId = acc.Id;
            conList.add(con);
       }
        if(!conList.isEmpty()){
            insert conList;
        }
    }
    
    public static void updatePhoneDesc(List<Account> accList, Map<Id, Account> accMap){
        for(Account acc: accList){
            if(acc.Phone != accMap.get(acc.Id).Phone){
                acc.Description = 'Phone Value is Changed from ' + accMap.get(acc.Id).Phone +
                    ' New Value ' + acc.Phone;
            }
        }
        
    }*/
    
        
    public static void demo(List<Account> accList){
        for(Account acc: accList){
            acc.description = 'Account is Created:' + acc.Name;
        }
    }
}