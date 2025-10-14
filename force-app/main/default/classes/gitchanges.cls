public with sharing class gitchanges {
    public gitchanges() {

        System.debug('Hello From Dev branch');

        System.debug('Hello From Dev branch, Its Updated');

        System.debug("Hello From SecondFeature Branch");

    public static void Account() {
       List<Account> accList = new List<Account>();
           for(Integer i = 0; i < 10; i++){
            Account acc = new Account();
            acc.Name = 'Test Account'+ i;
            acc.Phone = '1234567890';
            accList.add(acc);
           }
        if(!accList.isEmpty()){
            insert accList;
        }
        System.debug('Account created');
        System.debug('Acc is Created' + accList);      
    }
<<<<<<< HEAD
     System.debug('For Merge FF branch Updated');
=======
     System.debug('For Merge FF branch ');
     System.debug('Feature to dev - using mergeFF');
>>>>>>> ba787a3 (FeatureMergerFF)
    }
}