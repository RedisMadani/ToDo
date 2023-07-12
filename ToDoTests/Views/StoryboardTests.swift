import XCTest
@testable import ToDo

class StoryboardTests: XCTestCase {
  
  override func setUp() {
  }
  
  override func tearDown() {
  }
  
  func test_init_initialViewController_isItemListViewController() {
    let storyboard = UIStoryboard(name: Constants.MainBundleIdentifer, bundle: nil)
    
    let navigationController =
      storyboard.instantiateInitialViewController()
        as! UINavigationController
    
    let rootViewController = navigationController.viewControllers[0]
    
    XCTAssertTrue(rootViewController is ItemListViewController)
  }
}
