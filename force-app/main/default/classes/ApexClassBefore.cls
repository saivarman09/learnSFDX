public class ApexClassBefore {
    public static void updateRating(List<Account> accList, Map<Id, Account> oldAccMap){
        for(Account acc: accList){
            if((oldAccMap == null && acc.Industry != null && acc.Industry == 'Media') ||
               (acc.Industry != null && acc.Industry == 'Media' && acc.Industry != oldAccMap.get(acc.Id).Industry)){
                   acc.Rating = 'Hot';
               }
        }
        
    }
   public static void updateContact(List<Account> accList, Map<Id, Account> oldAccoMap){
        
        List<Contact> con = new List<Contact>();
        Map<Id, Account> accMap = new Map<Id, Account>();
        
        for(Account acc: accList){
            if(acc.Phone != null && acc.Phone != oldAccoMap.get(acc.Id).Phone && oldAccoMap != null){
                accMap.put(acc.Id, acc);
            }
        }
        
         for(Contact c : [Select Id, HomePhone, AccountId from Contact where AccountId IN: accMap.keySet()]){
                c.HomePhone = accMap.get(c.AccountId).Phone;
                con.add(c);
            }
        if(!con.isEmpty()){
            update con;
        }     
    }
}