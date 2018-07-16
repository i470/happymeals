Compiling/running unit tests
------------------------------------

Unit tests will be automatically compiled if dependencies were met in configure
and tests weren't explicitly disabled.

After configuring, they can be run with 'make check'.

To run the axiomd tests manually, launch src/test/test_axiom .

To add more axiomd tests, add `BOOST_AUTO_TEST_CASE` functions to the existing
.cpp files in the test/ directory or add new .cpp files that
implement new BOOST_AUTO_TEST_SUITE sections.

To run the axiom-qt tests manually, launch src/qt/test/axiom-qt_test

To add more axiom-qt tests, add them to the `src/qt/test/` directory and
the `src/qt/test/test_main.cpp` file.
