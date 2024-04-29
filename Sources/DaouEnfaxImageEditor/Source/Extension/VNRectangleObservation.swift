import Vision
import DaouGeometry2D

extension VNRectangleObservation {
    var square: Square {
        return .init(
            firstVertex: self.topLeft.point,
            secondVertex: self.topRight.point,
            thirdVertex: self.bottomRight.point,
            fourthVertex: self.bottomLeft.point
        )
    }
}
