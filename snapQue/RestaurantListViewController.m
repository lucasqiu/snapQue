//
//  RestaurantListViewController.m
//  snapQue
//
//  Created by Shi Qiu on 7/19/15.
//  Copyright (c) 2015 Shi Qiu. All rights reserved.
//

#import "RestaurantListViewController.h"

@interface RestaurantListViewController ()

@end


@implementation RestaurantListViewController
{
    
    NSDictionary *courseDetails;
    NSArray *justCourseNames;
    
    NSDictionary *webCourseDetails;
    NSArray *webCourseNames;
    
    NSArray *customer_queue;
    NSArray *table_queue;
}

//
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 2;
//}
//
//-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    if (section == 0) {
//        return @"Customer Queue";
//    } else {
//        return @"";
//    }
//}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //        if (section == 0) {
    //            return courseDetails.count;
    //        } else {
    //            return webCourseDetails.count;
    //        }
    NSLog(@"%zd", customer_queue.count);
    return customer_queue.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell   = [tableView dequeueReusableCellWithIdentifier:@"qcell"];
    
    //Retrieve an image
    //    UIImage *myImage = [UIImage imageNamed:@"DemoCellImage"];
    //    [cell.imageView setImage:myImage];
    //
    
    //    if (indexPath.section == 0) {
    //        cell.textLabel.text = justCourseNames[indexPath.row];
    //        cell.detailTextLabel.text = courseDetails[justCourseNames[indexPath.row]];
    //    } else {
    //        cell.textLabel.text = webCourseNames[indexPath.row];
    //        cell.detailTextLabel.text = webCourseDetails[webCourseNames[indexPath.row]];
    //    }
    
    UILabel *cLabel = (UILabel *)[cell viewWithTag:11];
    cLabel.text = customer_queue[indexPath.row];
    
    UILabel *tLabel = (UILabel *)[cell viewWithTag:12];
    tLabel.text = table_queue[indexPath.row];
    
    return cell;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    customer_queue = @[@"Asteria Grill", @"Dish n Dash", @"Le Boulanger", @"Ruby's Taqueria", @"Hobee's Restaurant", @"Burger King", @"Denny's", @"Gyu Kaku"];
    table_queue = @[@"13",@"7",@"22",@"11",@"37", @"7", @"12", @"31"];
    
    //        Do any additional setup after loading the view, typically from a nib.
    //        NSURL *url = [[NSBundle mainBundle] URLForResource:@"courses" withExtension:@"plist"];
    //
    //
    //        // load the plist into the dictionary
    //        courseDetails = [NSDictionary dictionaryWithContentsOfURL:url];
    //
    //
    //        // create an array with just the keys
    //        justCourseNames = courseDetails.allKeys;
    //
    //        NSURL *urlWeb = [[NSBundle mainBundle] URLForResource:@"courses_web" withExtension:@"plist"];
    //        webCourseDetails = [NSDictionary dictionaryWithContentsOfURL:urlWeb];
    //        webCourseNames = webCourseDetails.allKeys;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end