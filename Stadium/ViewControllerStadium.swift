
import UIKit

class ViewControllerStadium: ViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
      var imageforStadium = [#imageLiteral(resourceName: "st1.png"),#imageLiteral(resourceName: "st2.png"),#imageLiteral(resourceName: "st3.png"),#imageLiteral(resourceName: "st4.png"),#imageLiteral(resourceName: "st5.png"),#imageLiteral(resourceName: "st6.png"),#imageLiteral(resourceName: "st7.png"),#imageLiteral(resourceName: "st8.png"),#imageLiteral(resourceName: "st9.png"),#imageLiteral(resourceName: "st10.png"),#imageLiteral(resourceName: "st11.png"),#imageLiteral(resourceName: "st12.png")]
    
      var nameStadium = ["Moscow Luzhniki Stadium","Saint Petersburg Stadium","Fisht Stadium","Ekaterinburg Arena","Kazan Arena","Nizhny Novgorod Stadium","Rostov Arena","Samara Arena","Mordovia Arena","Volgograd Stadium","Spartak Stadium","Kaliningrad Stadium"]
      var capability = ["capacity 80000","Capacity: 67,000","Capacity: 48,000","Capacity: 45,000 ","Capacity: 45,000 ","Capacity: 45,000 ","Capacity: 45,000 ","Capacity: 45,000 ","Capacity: 45,000 seats ","Capacity: 45,000 seats ","Capacity: 42,000 ","Capacity: 35,212 "]
    
    
    
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageforStadium.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellStadium
        
        cell.stadiumImage.image = imageforStadium[indexPath.row]
        cell.stadiumname.text = nameStadium[indexPath.row]
        cell.stadiumCapacity.text = capability[indexPath.row]
        
        
        return cell
        
        
    }
    
 
 
  
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
