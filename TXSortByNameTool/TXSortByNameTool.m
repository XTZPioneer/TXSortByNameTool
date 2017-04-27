//
//  TXSortByNameTool.m
//  XPWGLQIANTAI
//
//  Created by  杭州信配iOS开发 on 2017/4/27.
//  Copyright © 2017年  杭州信配iOS开发. All rights reserved.
//

#import "TXSortByNameTool.h"
#import "TXSortByNameCore.h"
@implementation TXSortByNameTool
+ (void)sortByNameWithArray:(NSArray*)array nameField:(NSString*)nameField sectionBlock:(TXSectionBlock)sectionBlock sortTheValueOfBlock:(TXSortTheValueOfBlock)sortTheValueOfBlock{
    if (array && nameField) {
        //姓名容器
        NSMutableArray        * names  = [NSMutableArray array];
        //数据容器
        NSMutableArray        * datas  = [NSMutableArray array];
        
        //向容器中添加数据
        for (NSDictionary * dict  in array) {
            [names addObject:[NSString stringWithFormat:@"%@",dict[nameField]]];
            [datas addObject:dict];
        };
        //分类
        NSArray * sort =[TXSortByNameCore sortDataByFirstLetterWithArray:names isIncludeKeys:YES];
        
        //创建section容器
        NSMutableArray * keyArray=[NSMutableArray array];
        for (NSDictionary * dict in sort) {
            [keyArray addObject:dict[@"key"]];
        }
        if (sectionBlock) {
            sectionBlock(keyArray);
        }
        /**
         ** 重点:排序
         **/
        NSMutableArray * sortTheValueOfArray=[NSMutableArray array];
        for (int index=0; index<sort.count; index++) {
            //创建容器
            NSMutableArray * array=[NSMutableArray array];
            //取出value
            NSDictionary * dict= sort[index];
            NSArray      * values=dict[@"value"];
            for (NSString * name in values) {
                for (int i=0; i<datas.count; i++) {
                    NSDictionary * data=datas[i];
                    if ([name isEqualToString:[NSString stringWithFormat:@"%@",data[nameField]]]) {
                        [array addObject:data];
                        //添加一条数据就必须减少一条数据。
                        [datas removeObject:data];
                    };
                }
            }
            [sortTheValueOfArray addObject:array];
        }
        if (sortTheValueOfBlock) {
            sortTheValueOfBlock(sortTheValueOfArray);
        }
    }

}
@end
