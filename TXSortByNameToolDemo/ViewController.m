//
//  ViewController.m
//  TXSortByNameToolDemo
//
//  Created by  杭州信配iOS开发 on 2017/4/27.
//  Copyright © 2017年 张天雄. All rights reserved.
//

#import "ViewController.h"
#import "TXSortByName.h"

@interface ViewController ()
@property (nonatomic,strong)NSMutableArray *nameArray;
@end

@implementation ViewController
- (NSMutableArray *)nameArray {
    if (!_nameArray) {
        _nameArray = [[NSMutableArray alloc]initWithObjects:@"鲁迅",@"刘一",@"赵四",@"钱",@"李三",@"孙五",@"王二",@"黄蓉",@"孙悟空",@"哪吒",@"李天王",@"范冰冰",@"赵丽颖",@"霍建华",@"黄晓明",@"成龙",@"李连杰",@"李小龙",@"曾小贤",@"LiShan",@"angelababy",@"Angelababy", nil];
    }
    return _nameArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // 最为简单的排序
    NSArray *arr = [TXSortByNameCore sortDataByFirstLetterWithArray:self.nameArray isIncludeKeys:YES];
    
    
    NSArray *arr1 = [TXSortByNameCore sortDataByFirstLetterWithArray:self.nameArray isIncludeKeys:NO];
    
    NSLog(@"arr：%@",arr);
    NSLog(@"arr1：%@",arr1);
    NSArray * array=@[
                      @{@"name":@"鲁迅"
                        @"sex"@"1"
                        },
                      @{@"name":@"王二",
                        @"sex":@"2"
                        },
                      @{@"name":@"angelababy",
                        @"sex":@"1"
                        },
                      @{@"name":@"成龙",
                        @"sex":@"2",
                        },
                      ];
    
    //适合TableView
    [TXSortByNameTool sortByNameWithArray:array nameField:@"name" sectionBlock:^(id sectionContent) {
        NSLog(@"sectionContent:%@",sectionContent);
    } sortTheValueOfBlock:^(id returnValue) {
        NSLog(@"returnValue:%@",returnValue);
    }];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
