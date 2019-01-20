import Foundation
import SpriteKit

class CustomShapeNode : SKShapeNode {
    var xPos : CGFloat
    var yPos : CGFloat
    var duration : Double
    
    override init() {
        self.xPos = 0
        self.yPos = 0
        //self.delay = 0.0
        self.duration = 0.25
        super.init()
    }
/*
    convenience init(rectOf: CGSize, position:CGPoint) {
        self.init(rectOf: rectOf)
        self.position.x = position.x
        self.position.y = position.y
        xPos = position.x
        yPos = position.y
    }
*/
    func setInitialPosition(x:CGFloat) {
        self.position.x = x
        self.position.y = 0
        xPos = x
        yPos = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
    
    func move(direction:Direction, delay:Double) {
        switch direction {
        case .Up:
            yPos += 50
            print("move to y:\(yPos)")
            self.run(SKAction.sequence([SKAction.wait(forDuration: delay),
                                        SKAction.moveTo(y: yPos, duration: duration)]))
        case .Down:
                        yPos -= 50
            print("move to y:\(yPos)")
            self.run(SKAction.sequence([SKAction.wait(forDuration: delay),
                                        SKAction.moveTo(y: yPos, duration: duration)]))
        case .Left:
            xPos -= 50
            print("move to x:\(xPos)")
            self.run(SKAction.sequence([SKAction.wait(forDuration: delay),
                                        SKAction.moveTo(x: xPos, duration: duration)]))
        case .Right:
            xPos += 50
            print("move to x:\(xPos)")
            self.run(SKAction.sequence([SKAction.wait(forDuration: delay),
                                        SKAction.moveTo(x: xPos, duration: duration)]))
        }
    }
}
