trigger AccountBeforeUpdateTrigger on Account (before insert, before Update, after Update) {
    
    if(trigger.isBefore){
        if(trigger.isInsert){
            ApexClassBefore.updateRating(Trigger.new, null);
        } else if(trigger.isUpdate){   
            ApexClassBefore.updateRating(Trigger.new, Trigger.OldMap);
            
        }     
    }
    if(trigger.isUpdate){
        if(trigger.isAfter){
            ApexClassBefore.updateContact(Trigger.new, Trigger.OldMap);
        }
    }
}