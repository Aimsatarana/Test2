//
//  TabbarController.m
//  tttab
//
//  Created by iMac on 4/21/14.
//  Copyright (c) 2014 iMac. All rights reserved.
//

#import "TabbarController.h"

@interface TabbarController ()
{
    IBOutlet UIView     *_tabView;
    NSMutableArray      *_tabButtons;
    
}
@end

@implementation TabbarController

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
    
    self.tabBar.hidden = YES;
    
    CGRect rect     = _tabView.frame;
    rect            = self.tabBar.frame;
    _tabView.frame   = rect;
    
    int sumOfTab = 5;
    _tabButtons = [ NSMutableArray array];
    for (int i = 1; i<=sumOfTab; i++) {
        UIButton *btn   = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.tag         = i;
        btn.frame       = CGRectMake(320/sumOfTab *(i-1), 5, 320/sumOfTab, 32);
        [btn addTarget:self action:@selector(btnTabPress:) forControlEvents:UIControlEventTouchUpInside];
        [btn setTitle:@"Show" forState:UIControlStateNormal];
        [_tabView addSubview:btn];
        [_tabButtons addObject:btn];
    }
    
    [self.view addSubview:_tabView];
}

- (void) btnTabPress:(id) sender {
    UIButton *btn       = (UIButton *)sender;
    self.selectedIndex  = btn.tag;
    
    
}

- (IBAction)gotoSelectTab:(id)sender {
    
//    [self.tabBarController setSelectedIndex:2];
    
    
    self.selectedIndex = 0;
    
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
