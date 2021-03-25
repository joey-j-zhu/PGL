# CMake generated Testfile for 
# Source directory: /Users/joeyzhu/Projects/PGL/opencv/modules/features2d
# Build directory: /Users/joeyzhu/Projects/PGL/build_opencv/modules/features2d
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_features2d "/Users/joeyzhu/Projects/PGL/build_opencv/bin/opencv_test_features2d" "--gtest_output=xml:opencv_test_features2d.xml")
set_tests_properties(opencv_test_features2d PROPERTIES  LABELS "Main;opencv_features2d;Accuracy" WORKING_DIRECTORY "/Users/joeyzhu/Projects/PGL/build_opencv/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/joeyzhu/Projects/PGL/opencv/cmake/OpenCVUtils.cmake;1707;add_test;/Users/joeyzhu/Projects/PGL/opencv/cmake/OpenCVModule.cmake;1311;ocv_add_test_from_target;/Users/joeyzhu/Projects/PGL/opencv/cmake/OpenCVModule.cmake;1075;ocv_add_accuracy_tests;/Users/joeyzhu/Projects/PGL/opencv/modules/features2d/CMakeLists.txt;9;ocv_define_module;/Users/joeyzhu/Projects/PGL/opencv/modules/features2d/CMakeLists.txt;0;")
add_test(opencv_perf_features2d "/Users/joeyzhu/Projects/PGL/build_opencv/bin/opencv_perf_features2d" "--gtest_output=xml:opencv_perf_features2d.xml")
set_tests_properties(opencv_perf_features2d PROPERTIES  LABELS "Main;opencv_features2d;Performance" WORKING_DIRECTORY "/Users/joeyzhu/Projects/PGL/build_opencv/test-reports/performance" _BACKTRACE_TRIPLES "/Users/joeyzhu/Projects/PGL/opencv/cmake/OpenCVUtils.cmake;1707;add_test;/Users/joeyzhu/Projects/PGL/opencv/cmake/OpenCVModule.cmake;1213;ocv_add_test_from_target;/Users/joeyzhu/Projects/PGL/opencv/cmake/OpenCVModule.cmake;1076;ocv_add_perf_tests;/Users/joeyzhu/Projects/PGL/opencv/modules/features2d/CMakeLists.txt;9;ocv_define_module;/Users/joeyzhu/Projects/PGL/opencv/modules/features2d/CMakeLists.txt;0;")
add_test(opencv_sanity_features2d "/Users/joeyzhu/Projects/PGL/build_opencv/bin/opencv_perf_features2d" "--gtest_output=xml:opencv_perf_features2d.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_features2d PROPERTIES  LABELS "Main;opencv_features2d;Sanity" WORKING_DIRECTORY "/Users/joeyzhu/Projects/PGL/build_opencv/test-reports/sanity" _BACKTRACE_TRIPLES "/Users/joeyzhu/Projects/PGL/opencv/cmake/OpenCVUtils.cmake;1707;add_test;/Users/joeyzhu/Projects/PGL/opencv/cmake/OpenCVModule.cmake;1214;ocv_add_test_from_target;/Users/joeyzhu/Projects/PGL/opencv/cmake/OpenCVModule.cmake;1076;ocv_add_perf_tests;/Users/joeyzhu/Projects/PGL/opencv/modules/features2d/CMakeLists.txt;9;ocv_define_module;/Users/joeyzhu/Projects/PGL/opencv/modules/features2d/CMakeLists.txt;0;")
