//
//  openssl-macos-tests.m
//  openssl-macos-tests
//
//  Created by Jiar on 2019/4/8.
//  Copyright © 2019 Jiar. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <openssl/openssl.h>

@interface openssl_macos_tests : XCTestCase

@end

@implementation openssl_macos_tests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testRSA {
    RSA* rsa = RSA_generate_key(1024, RSA_F4, nil, nil);
    NSLog(@"RSA's bits is: %d", BN_num_bits(rsa->n));
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
