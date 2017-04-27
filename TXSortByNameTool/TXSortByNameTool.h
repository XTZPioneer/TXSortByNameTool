//
//  TXSortByNameTool.h
//  XPWGLQIANTAI
//
//  Created by  杭州信配iOS开发 on 2017/4/27.
//  Copyright © 2017年  杭州信配iOS开发. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 * TXSectionBlock 返回组信息代码块
 */
typedef void (^TXSectionBlock) (id sectionContent);
/*
 * TXSectionBlock 返回排序后的代码块
 */
typedef void (^TXSortTheValueOfBlock) (id returnValue);

@interface TXSortByNameTool : NSObject

/*
 * array:需要排序的数据 
 * nameField:按照姓名排序时姓名字段
 */
+ (void)sortByNameWithArray:(NSArray*)array nameField:(NSString*)nameField sectionBlock:(TXSectionBlock)sectionBlock sortTheValueOfBlock:(TXSortTheValueOfBlock)sortTheValueOfBlock;

@end
