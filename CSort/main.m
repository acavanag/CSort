//
//  main.m
//  CSort
//
//  Created by Andrew Cavanagh on 6/9/14.
//  Copyright (c) 2014 WeddingWire. All rights reserved.
//

#import <Foundation/Foundation.h>

int fastSort(const void *a, const void *b)
{
    int intA = *((int*)a);
    int intB = *((int*)b);
    
    if ( intA == intB ) return 0;
    else if ( intA < intB ) return -1;
    else return 1;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"building array...");
        
        int a[1000000];
        
        for (int i = 0; i < 1000000; i++)
        {
            a[i] = rand();
        }
        
        NSLog(@"sorting....");
        
        double start = CFAbsoluteTimeGetCurrent();
        qsort( a, 1000000, sizeof(int), fastSort);
        double end = CFAbsoluteTimeGetCurrent();
        
        NSLog(@"time: %f", end-start);
        
    }
    return 0;
}
