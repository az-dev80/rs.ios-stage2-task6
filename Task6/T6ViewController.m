//
//  T6ViewController.m
//  Task6
//
//  Created by Albert Zhloba on 6/23/20.
//  Copyright © 2020 Albert Zhloba. All rights reserved.
//

#import "T6ViewController.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import <QuartzCore/QuartzCore.h>
#define M_PI   3.14159265358979323846264338327950288   /* pi */
#define DEGREES_TO_RADIANS(angle) (angle / 180.0 * M_PI)
@interface T6ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *customLabel1;
@property (weak, nonatomic) IBOutlet UIButton *customButton1;


@end

@implementation T6ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(20.0, 400.0, 70.0, 70.0)];
    myView.layer.cornerRadius = 35;
    UIColor *clr = [UIColor colorWithRed:0xEE/255.0f green:0x68/255.0f blue:0x6A/255.0f alpha:1];
    myView.layer.backgroundColor = clr.CGColor;
    
    CALayer *selectionLayer = [CALayer layer];
    selectionLayer.backgroundColor = clr.CGColor;
    selectionLayer.frame = CGRectMake(0.0, 0.0, 70.0, 70.0);
    selectionLayer.cornerRadius = 35;
    [myView.layer addSublayer:selectionLayer];
    [self.view addSubview:myView];
    CABasicAnimation* pulseAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    pulseAnimation.fromValue = [NSNumber numberWithFloat: 0.9];
    pulseAnimation.toValue = [NSNumber numberWithFloat: 1.1];
    pulseAnimation.duration = 1.0;
    pulseAnimation.repeatCount = HUGE_VALF;
    pulseAnimation.autoreverses = YES;
    pulseAnimation.timingFunction = [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseInEaseOut];
    [selectionLayer addAnimation:pulseAnimation forKey:@"pulseAnimation"];
    
    UIView *myViewSq = [[UIView alloc] initWithFrame:CGRectMake(110.0, 400.0, 70.0, 70.0)];
    UIColor *clrSq = [UIColor colorWithRed:0x29/255.0f green:0xC2/255.0f blue:0xD1/255.0f alpha:1];
    //myViewSq.layer.backgroundColor = clr.CGColor;
    
    CALayer *selectionLayerSq = [CALayer layer];
    selectionLayerSq.backgroundColor = clrSq.CGColor;
    selectionLayerSq.frame = CGRectMake(0.0, 0.0, 70.0, 70.0);
    [myViewSq.layer addSublayer:selectionLayerSq];
    [self.view addSubview:myViewSq];
    CABasicAnimation* moveAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
    moveAnimation.fromValue = [NSValue valueWithCGPoint:CGPointMake(35.0, 28.0)];
    moveAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(35.0, 42.0)];
    moveAnimation.duration = 1.0;
    moveAnimation.repeatCount = HUGE_VALF;
    moveAnimation.autoreverses = YES;
    moveAnimation.timingFunction = [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseInEaseOut];
    [selectionLayerSq addAnimation:moveAnimation forKey:nil];
    
    UIBezierPath* trianglePath = [UIBezierPath bezierPath];
    [trianglePath moveToPoint:CGPointMake(35.0, 0.0)];
    [trianglePath addLineToPoint:CGPointMake(70.0, 70.0)];
    [trianglePath addLineToPoint:CGPointMake(0.0, 70.0)];
    [trianglePath closePath];

    CAShapeLayer *triangleMaskLayer = [CAShapeLayer layer];
    [triangleMaskLayer setPath:trianglePath.CGPath];

    UIView *viewTr = [[UIView alloc] initWithFrame:CGRectMake(200.0,400.0, 70.0, 70.0)];
    UIColor *clrTr = [UIColor colorWithRed:0x34/255.0f green:0xC1/255.0f blue:0xA1/255.0f alpha:1];

    viewTr.layer.backgroundColor = clrTr.CGColor;
    viewTr.layer.mask = triangleMaskLayer;
    
//    CALayer *selectionLayerRt = [CALayer layer];
//    selectionLayerRt.backgroundColor = clrTr.CGColor;
//    selectionLayerRt.frame = CGRectMake(0.0, 0.0, 70.0, 70.0);
//    [viewTr.layer addSublayer:selectionLayerRt];
    [self.view addSubview:viewTr];
    
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 * 1.0 ];
    rotationAnimation.duration = 1.0;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = HUGE_VALF;

    [viewTr.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
    
   // NSNumber *rotationAtStart = [selectionLayerRt valueForKeyPath:@"transform.rotation"];
//    CATransform3D myRotationTransform = CATransform3DRotate(selectionLayerRt.transform, 3.0, 0.0, 0.0, 1.0);
//    selectionLayerRt.transform = myRotationTransform;
    
//    CABasicAnimation *myAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
//    myAnimation.duration = 1.0;
//    myAnimation.fromValue = rotationAtStart;
//    myAnimation.toValue = [NSNumber numberWithFloat:([rotationAtStart floatValue] + 3.0)];
//    [selectionLayerRt addAnimation:myAnimation forKey:@"transform.rotation"];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)down:(id)sender {
    ViewController2 *vc1 = [[ViewController2 alloc]initWithNibName:@"ViewController2" bundle:nil];
    ViewController3 *vc2 = [[ViewController3 alloc] initWithNibName:@"ViewController3" bundle:nil];
    UITabBarController *tbc = [[UITabBarController alloc] init];
    
    [vc1.tabBarItem setTitle: @"Tab1"];
    [vc2.tabBarItem setTitle: @"Tab2"];
    [tbc setViewControllers:[NSArray arrayWithObjects: vc1, vc2, nil]];
    [self.navigationController pushViewController:tbc animated:YES];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
