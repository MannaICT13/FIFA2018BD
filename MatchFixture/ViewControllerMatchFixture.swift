
import UIKit
import UserNotifications
class ViewControllerMatchFixture: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    
    var imageMatchFixture = [#imageLiteral(resourceName: "m1.png"),#imageLiteral(resourceName: "m2.png"),#imageLiteral(resourceName: "m3.png"),#imageLiteral(resourceName: "m4.png"),#imageLiteral(resourceName: "m5.png"),#imageLiteral(resourceName: "m6.png"),#imageLiteral(resourceName: "m7.png"),#imageLiteral(resourceName: "m8.png"),#imageLiteral(resourceName: "m9.png"),#imageLiteral(resourceName: "m10.png"),#imageLiteral(resourceName: "m11.png"),#imageLiteral(resourceName: "m12.png"),#imageLiteral(resourceName: "m13.png"),#imageLiteral(resourceName: "m14.png"),#imageLiteral(resourceName: "m15.png"),#imageLiteral(resourceName: "m16.png"),#imageLiteral(resourceName: "m17.png"),#imageLiteral(resourceName: "m18.png"),#imageLiteral(resourceName: "m19.png"),#imageLiteral(resourceName: "m20.png"),#imageLiteral(resourceName: "m21.png"),#imageLiteral(resourceName: "m22.png"),#imageLiteral(resourceName: "m23.png"),#imageLiteral(resourceName: "m24.png"),#imageLiteral(resourceName: "m25.png"),#imageLiteral(resourceName: "m26.png"),#imageLiteral(resourceName: "m27.png"),#imageLiteral(resourceName: "m28.png"),#imageLiteral(resourceName: "m29.png"),#imageLiteral(resourceName: "m30.png"),#imageLiteral(resourceName: "m31.png"),#imageLiteral(resourceName: "m32.png"),#imageLiteral(resourceName: "m33.png"),#imageLiteral(resourceName: "m34.png"),#imageLiteral(resourceName: "m35.png"),#imageLiteral(resourceName: "m36.png"),#imageLiteral(resourceName: "m37.png"),#imageLiteral(resourceName: "m38.png"),#imageLiteral(resourceName: "m39.png"),#imageLiteral(resourceName: "m40.png")]
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageMatchFixture.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellMatchFixture
        cell.imageMatchFixture.image = imageMatchFixture[indexPath.row]
        
        return cell
    }
    
    //Animation for tableView
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
       
        cell.alpha = 0
        
        let transform = CATransform3DTranslate(CATransform3DIdentity, -250, 20, 0)
        
        cell.layer.transform = transform
        
        UIView.animate(withDuration: 1.0) {
            cell.alpha = 2.0
            cell.layer.transform = CATransform3DIdentity
        }
        
        
    }
    
    
    
    

    
    
    
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.sound,.badge,.alert]) { didShow,Error in
    }
        loadNotification14()
        loadNotification15()
}
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    func loadNotification14(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 06, day: 14, hour: 20, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:14.06.2018"
        content.subtitle = "Russia vs Saudi Arabi"
        content.body = "at 9.00 PM"
        
        let request = UNNotificationRequest(identifier: "Identifier1", content: content, trigger: trigger)
      
    
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
    
    
    
    }
    
    func loadNotification15(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 06, day: 15, hour: 17, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:15.06.2018"
        content.subtitle = "Egypt vs Urugay,Morocco vs Iran"
        content.body = "at 6.00 PM and 9.00 PM"
        
        let request = UNNotificationRequest(identifier: "Identifier2", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
        
        
        
    }
    func loadNotification16(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 06, day: 15, hour: 23, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:16.06.2018"
        content.subtitle = "Potugal vs Spain,France vs Australia,Argentina vs Iceland,Peru vs Denmark"
        content.body = "at 12.00 AM,4.00 PM, 7.00 PM and 10.00 PM"
        
        let request = UNNotificationRequest(identifier: "Identifier2", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
        
        
        
    }
    func loadNotification17(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 06, day: 6, hour: 23, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:17.06.2018"
        content.subtitle = "Creatia vs Nigaria,Costarica vs Serbia,Germany vs Mexico"
        content.body = "at 1.00 AM, 6.00 PM and 9.00 PM"
        
        let request = UNNotificationRequest(identifier: "Identifier3", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
        
        
        
    }
    func loadNotification18(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 05, day: 17, hour: 23, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:18.06.2018"
        content.subtitle = "Brazil vs  Switzerland,Sweden vs South Koria,Belgium vs Panama"
        content.body = "at 12.00AM, 6.00 PM and 9.00 PM"
        
        let request = UNNotificationRequest(identifier: "Identifier4", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
        
        
        
    }
    func loadNotification19(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 06, day: 18, hour: 23, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:19.06.2018"
        content.subtitle = "Tunisia vs England,Colombia vs Japan,Poland vs Senegal"
        content.body = "at 12.00 AM, 6.00 PM and 9.00 PM"
        
        let request = UNNotificationRequest(identifier: "Identifier5", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
        
        
        
    }
    func loadNotification20(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 06, day: 19, hour: 23, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:20.06.2018"
        content.subtitle = "Russia vs Egypt,Portugal vs Morocco,Uruguay vs Saudi Arabia"
        content.body = "at 12.00 AM, 6.00 PM and 9.00 PM"
        
        let request = UNNotificationRequest(identifier: "Identifier6", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
        
        
        
    }
    func loadNotification21(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 06, day: 20, hour: 23, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:21.06.2018"
        content.subtitle = "EIran vs Spain,Denmark vs Australia,France vs Peru"
        content.body = "at 12.00 AM,6.00 PM and 9.00 PM"
        
        let request = UNNotificationRequest(identifier: "Identifier7", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
        
        
        
    }
    func loadNotification22(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 06, day: 21, hour: 23, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:22.06.2018"
        content.subtitle = "Argentina vs Cratia,Brazil vs Castarica,Nigeria vs Iceland"
        content.body = "at 12.00 AM 6.00 PM and 9.00 PM"
        
        let request = UNNotificationRequest(identifier: "Identifier8", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
        
        
        
    }
    func loadNotification23(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 06, day: 22, hour: 23, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:23.06.2018"
        content.subtitle = "Serbia vs Switzerland,Belgiam vs Tunisia,South Koria vs Mexico "
        content.body = "at 12.00 AM 6.00 PM and 9.00 PM"
        
        let request = UNNotificationRequest(identifier: "Identifier9", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
        
        
        
    }
    func loadNotification24(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 06, day: 23, hour: 23, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:24.06.2018"
        content.subtitle = "Germany vs Sweden,England vs Panama,Japan vs Senegal"
        content.body = "at 12.00 AM, 6.00 PM, 9.00 PM"
        
        let request = UNNotificationRequest(identifier: "Identifier10", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
        
        
        
    }
    func loadNotification25(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 06, day: 24, hour: 23, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:25.06.2018"
        content.subtitle = "Poland vs Colombia,Soudi Arabia vs Egypt,Urugua vs Russia"
        content.body = "at 12.00 AM, 8.00 PM ,8.00 PM"
        
        let request = UNNotificationRequest(identifier: "Identifier11", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
        
        
        
    }
    func loadNotification26(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 06, day: 25, hour: 23, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:26.06.2018"
        content.subtitle = "Spain vs Morocco,Australia vs Peru,Denmark vs France and Iran vs Portugal"
        content.body = "at 12.00 AM ,8.00 PM, 8.00 PM and 12.00 AM"
        
        let request = UNNotificationRequest(identifier: "Identifier12", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
        
        
        
    }
    func loadNotification27(){
        
        let calender = Calendar.current
        let components = DateComponents(  year: 2018, month: 06, day: 26, hour: 23, minute: 00)
        let date = calender.date(from: components)
        let comp2 = calender.dateComponents([.year,.month,.day,.hour,.minute], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comp2, repeats: false)
        
        
        let content = UNMutableNotificationContent()
        content.title = "Recent Match:27.06.2018"
        content.subtitle = "Nigeria vs Argentina and Iceland vs Cratia"
        content.body = "at 12.00 AM and 12.00 AM"
        
        let request = UNNotificationRequest(identifier: "Identifier13", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                //handle error
            } else {
                //notification set up successfully
            }
        })
        
        
        
    }

}
