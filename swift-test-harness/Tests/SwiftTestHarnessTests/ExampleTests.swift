#if canImport(Testing)
import Testing
import Vergen

@Suite("Vergen Swift Export Tests")
struct VergenExportTests {
    @Test("Vergen swift module imported cleanly")
    func testSwiftModuleLoads() throws {
        #expect(Bool(true), "Vergen swift module imported cleanly")
    }
}
#elseif canImport(XCTest)
import XCTest
import Vergen

final class VergenExportTests: XCTestCase {
    func testSwiftModuleLoads() throws {
        XCTAssertTrue(true, "Vergen swift module imported cleanly")
    }
}
#endif
