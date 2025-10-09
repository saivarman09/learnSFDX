trigger AccountTrigger on Account (before insert, after insert, before update) {
    if(trigger.isInsert){
     if(trigger.isBefore){
         ApexTriggerHandler.demo(Trigger.new);
}
        
        /*if(trigger.isAfter){
            ApexTriggerHandler.CreateContact(Trigger.new);
        }
    }
    
    if(trigger.isUpdate){
        if(trigger.isBefore){
            ApexTriggerHandler.updatePhoneDesc(Trigger.new, Trigger.OldMap);
        }
    }*/
}
}