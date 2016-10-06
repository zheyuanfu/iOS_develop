//
//  PaintingBoardView.m
//  PaintingBoard
//
//  Created by ZheyuanFu on 16/6/28.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "PaintingBoardView.h"
#import "Random.h"

@implementation PaintingBoardView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 2.0);
    CGContextSetStrokeColorWithColor(context, self.currentColor.CGColor);
    
    CGContextSetFillColorWithColor(context, self.currentColor.CGColor);
    CGRect currentRect = CGRectMake(self.firstTouchLocation.x, self.firstTouchLocation.y, self.lastTouchLocation.x - self.firstTouchLocation.x, self.lastTouchLocation.y - self.firstTouchLocation.y);
    
    switch (self.shapeType) {
        case kLineShape:
            CGContextMoveToPoint(context,self.firstTouchLocation.x,self.firstTouchLocation.y);
            CGContextAddLineToPoint(context,self.lastTouchLocation.x,self.lastTouchLocation.y);
            CGContextStrokePath(context);
            break;
        case kRectShape:
            CGContextAddRect(context, currentRect);
            CGContextDrawPath(context, kCGPathFillStroke);
            break;
        case kEllipseShape:
            CGContextAddEllipseInRect(context, currentRect);
            CGContextDrawPath(context, kCGPathFillStroke);
            break;
        case kImageShape:{
            CGFloat horizontalOffset = self.drawImage.size.width / 2;
            CGFloat verticalOffset = self.drawImage.size.height / 2;
            CGPoint drawPoint = CGPointMake(self.lastTouchLocation.x - horizontalOffset, self.lastTouchLocation.y - verticalOffset);
            [self.drawImage drawAtPoint:drawPoint];
            break;
        }
//            break;
        default:
            break;
    }
}

-(id) initWithCoder:(NSCoder *)aDecoder{
    if(self = [super initWithCoder:aDecoder]){
        _currentColor = [UIColor redColor];
        _useRandomColor = NO;
        _drawImage = [UIImage imageNamed:@"warlock.png"];
    }
    return self;
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    if(self.useRandomColor){
        self.currentColor = [UIColor randomColor];
        UITouch *touch = [touches anyObject];
        self.firstTouchLocation = [touch locationInView:self];
        self.lastTouchLocation = [touch locationInView:self];
        [self setNeedsDisplay];
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    self.lastTouchLocation = [touch locationInView:self];
    [self setNeedsDisplay];
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    self.lastTouchLocation = [touch locationInView:self];
    [self setNeedsDisplay];
}

@end

























