import UIKit


struct myVeriables{
    var heightSliderValue : String = ""
    var weightSliderValue : String = ""
    var bmivValue : Float = 0.0
    
    
    let descListe = [
        "Spor Yapın!",
        "Birazdaha Yemek Yiyin!",
        "Yemeği Kısıp Düzenli Antreman Yapın!"
    ]
}



func billCount(weightsl : Float , heightsl : Float) -> Float{
    
   //  let topla = weightsl  / (pow(2, heightsl))
    
    return weightsl  / (pow(2, heightsl))
    
}
