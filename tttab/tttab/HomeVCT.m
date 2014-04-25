//
//  HomeVCT.m
//  tttab
//
//  Created by iMac on 4/25/14.
//  Copyright (c) 2014 iMac. All rights reserved.
//

#import "HomeVCT.h"
#import "HomeTabVCT.h"
@interface HomeVCT ()
{
    HomeTabVCT *_homeTabVCT;
    
    IBOutlet UIView * _barView;
}
@end

@implementation HomeVCT

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    _homeTabVCT         = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeTabVCT"];
    CGRect _rect        = _homeTabVCT.view.frame;
    _rect.origin.y      += _barView.frame.size.height;
    _rect.size.height   -= _barView.frame.size.height;
    _homeTabVCT.view.frame = _rect;
    [self.view addSubview:_homeTabVCT.view];
    _homeTabVCT.selectedIndex = 1;

    [self.view  bringSubviewToFront:_barView];
    
//    NSLog(@"%@",NSStringFromCGRect(_homeTabVCT.view.frame));
}
- (IBAction)selectTab:(id)sender {
    UIButton *btn = (UIButton*)sender;
    _homeTabVCT.selectedIndex = btn.tag;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
