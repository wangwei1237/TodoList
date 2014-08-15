//
//  XYZAddTodoItemViewController.m
//  TodoList
//
//  Created by wangwei on 14-8-2.
//  Copyright (c) 2014年 example. All rights reserved.
//

#import "XYZAddTodoItemViewController.h"

@interface XYZAddTodoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *buttonDone;

@end

@implementation XYZAddTodoItemViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.buttonDone) {
        return;
    }
    
    if (self.textField.text.length <= 0) {
        return;
    }
    
    self.todoItem = [[XYZTodoItem alloc] init];
    self.todoItem.itemName = self.textField.text;
    self.todoItem.completed = NO;
}

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
