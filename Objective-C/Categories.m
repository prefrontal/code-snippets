// ---------------------------------------------------------------------------------------

// Creating categories in interface file:

	// Car+Maintenance.h
	#import "Car.h"

	@interface Car (Maintenance)

	- (BOOL)needsOilChange;
	- (void)changeOil;
	- (void)rotateTires;
	- (void)jumpBatteryUsingCar:(Car *)anotherCar;

	@end

// Categories in implementation file:

	// Car+Maintenance.m
	#import "Car+Maintenance.h"

	@implementation Car (Maintenance)

	- (BOOL)needsOilChange {
		return YES;
	}
	- (void)changeOil {
		NSLog(@"Changing oil for the %@", [self model]);
	}
	- (void)rotateTires {
		NSLog(@"Rotating tires for the %@", [self model]);
	}
	- (void)jumpBatteryUsingCar:(Car *)anotherCar {
		NSLog(@"Jumped the %@ with a %@", [self model], [anotherCar model]);
	}

	@end

// Categories can be defined all in the same file or can be split across multiple files
// Multiple categories can be defined per class

// ---------------------------------------------------------------------------------------
