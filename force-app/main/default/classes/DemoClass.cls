public class DemoClass {
    
    Public Static Void demo(){
        List<String> Colors = new List<String>();
        Colors.add('red');
        Colors.add('blue');
        Colors.add('white');
        Colors.add('orange');
        
        System.debug('Colors are: ' + Colors.get(1));
        
        Map<Integer, String> cars = new Map<Integer, String>();
        
        cars.put(1, 'Audi');
        cars.put(2, 'Ferrari');
        cars.put(3, 'Lambo');
        cars.put(4, 'Mercedes');
     
        
        
        System.debug('Available Cars are: ' + cars.get(4));
        cars.put(3, 'Porsche');
        System.debug(' Check for Cars : ' + cars.get(3));
        
        System.debug('Check for car : ' + cars.containskey(2));
        cars.put(5, 'Tesla');
        System.debug('Total Cars Size : ' + cars.size());
    } 
      
    Public static void greet() {
        System.debug('DEV branch');
        System.debug('Feature branch');
        System.debug('Altrnate changes - Feature Branch Updated'); 
    }
    Public static void rebaseanother() {
        System.debug('Rebased onto main instead after dev');
    }
    System.debug('Rebase Check');
    System.debug('Reuse');
    System.debug('Sample check');
}