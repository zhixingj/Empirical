//  This file is part of Empirical, https://github.com/devosoft/Empirical
//  Copyright (C) Michigan State University, 2016-2017.
//  Released under the MIT Software license; see doc/LICENSE

#define CATCH_CONFIG_MAIN
#undef NDEBUG
#define TDEBUG 1

#include "third-party/Catch/single_include/catch2/catch.hpp"

#include "emp/base/assert.hpp"

#include <sstream>
#include <iostream>

TEST_CASE("Test assert", "[base]")
{

	// Asserts are tricky to test.  Here are a bunch that should PASS.
  emp_assert(true);
  REQUIRE(emp::assert_last_fail == 0);

  emp_assert(100);
  REQUIRE(emp::assert_last_fail == 0);

  emp_assert(23 < 24);
  REQUIRE(emp::assert_last_fail == 0);

  emp_assert((14 < 13)?0:1);
  REQUIRE(emp::assert_last_fail == 0);

	// Best way to test different behavior of emp_assert based on compiler flags?

  int expected_line_num = __LINE__ + 1; // This line must precede the assert for line num to pass
	emp_assert(false);
	REQUIRE(emp::assert_last_fail);

  // Test filename and line number
  // Trim the filename in case it runs from another directory
	std::string filen = emp::assert_fail_info.filename;
	std::string test_filen = "assert.cpp";
	REQUIRE(filen.substr(filen.size()-test_filen.size()) == test_filen);
	REQUIRE(emp::assert_fail_info.line_num == expected_line_num);
  // Error message
	REQUIRE(emp::assert_fail_info.error == "false");

  // Can we clear the assert?
	REQUIRE(emp::assert_last_fail);
	emp::assert_clear();
	REQUIRE_FALSE(emp::assert_last_fail);
  
  // Run through similar tests to ensure no holdovers from cleared assert.
  emp_assert(true);
  REQUIRE(emp::assert_last_fail == 0);

  emp_assert((2 + 4) / 2);
  REQUIRE(emp::assert_last_fail == 0);


  expected_line_num = __LINE__ + 1; // This line must precede the assert for line num to pass
  emp_assert(2 > 3); // False! Trigger the assert
	REQUIRE(emp::assert_last_fail);
  

	filen = emp::assert_fail_info.filename;
	test_filen = "assert.cpp";
	REQUIRE(filen.substr(filen.size()-test_filen.size()) == test_filen); // Trim filename again
	REQUIRE(emp::assert_fail_info.line_num == expected_line_num);
  // Error message
	REQUIRE(emp::assert_fail_info.error == "2 > 3");
}
