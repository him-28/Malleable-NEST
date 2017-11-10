# CMake generated Testfile for 
# Source directory: /home/bsc15/bsc15982/nest-simulator/testsuite/selftests
# Build directory: /home/bsc15/bsc15982/nest-simulator/change/testsuite/selftests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(selftests/test_pass.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_pass.sli")
add_test(selftests/test_goodhandler.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_goodhandler.sli")
add_test(selftests/test_lazyhandler.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_lazyhandler.sli")
add_test(selftests/test_fail.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_fail.sli")
set_tests_properties(selftests/test_fail.sli PROPERTIES  WILL_FAIL "TRUE")
add_test(selftests/test_stop.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_stop.sli")
set_tests_properties(selftests/test_stop.sli PROPERTIES  WILL_FAIL "TRUE")
add_test(selftests/test_badhandler.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_badhandler.sli")
set_tests_properties(selftests/test_badhandler.sli PROPERTIES  WILL_FAIL "TRUE")
add_test(selftests/test_pass_or_die.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_pass_or_die.sli")
set_tests_properties(selftests/test_pass_or_die.sli PROPERTIES  WILL_FAIL "TRUE")
add_test(selftests/test_assert_or_die_b.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_assert_or_die_b.sli")
set_tests_properties(selftests/test_assert_or_die_b.sli PROPERTIES  WILL_FAIL "TRUE")
add_test(selftests/test_assert_or_die_p.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_assert_or_die_p.sli")
set_tests_properties(selftests/test_assert_or_die_p.sli PROPERTIES  WILL_FAIL "TRUE")
add_test(selftests/test_fail_or_die.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_fail_or_die.sli")
set_tests_properties(selftests/test_fail_or_die.sli PROPERTIES  WILL_FAIL "TRUE")
add_test(selftests/test_crash_or_die.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_crash_or_die.sli")
set_tests_properties(selftests/test_crash_or_die.sli PROPERTIES  WILL_FAIL "TRUE")
add_test(selftests/test_failbutnocrash_or_die_crash.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_failbutnocrash_or_die_crash.sli")
set_tests_properties(selftests/test_failbutnocrash_or_die_crash.sli PROPERTIES  WILL_FAIL "TRUE")
add_test(selftests/test_failbutnocrash_or_die_pass.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_failbutnocrash_or_die_pass.sli")
set_tests_properties(selftests/test_failbutnocrash_or_die_pass.sli PROPERTIES  WILL_FAIL "TRUE")
add_test(selftests/test_passorfailbutnocrash_or_die.sli "/home/bsc15/bsc15982/nest-simulator/change/bin/nest" "/home/bsc15/bsc15982/nest-simulator/change/share/doc/nest/selftests/test_passorfailbutnocrash_or_die.sli")
set_tests_properties(selftests/test_passorfailbutnocrash_or_die.sli PROPERTIES  WILL_FAIL "TRUE")
