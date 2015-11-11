module: statistics-test-suite
synopsis: Test suite for the statistics-base library.

define test mean/simple-knuth-test ()
  let data = as(limited(<vector>, of: <double-float>), #[1.0d0, 3.0d0, 5.0d0]);
  assert-equal(3.0d0, mean/simple(data));
  assert-equal(3.0d0, mean/knuth(data));
end test mean/simple-knuth-test;

define test mean/harmonic-test ()
  let data = as(limited(<vector>, of: <double-float>), #[40.0d0, 60.0d0]);
  assert-equal(48.0d0, mean/harmonic(data));
end test mean/harmonic-test;

define test mean/geometric-test ()
  let data = as(limited(<vector>, of: <double-float>), #[2.0d0, 8.0d0]);
  assert-equal(4.0d0, mean/geometric(data));
end test mean/geometric-test;

define suite mean-test-suite ()
  test mean/simple-knuth-test;
  test mean/harmonic-test;
  test mean/geometric-test;
end suite;

define suite statistics-base-test-suite ()
  suite mean-test-suite;
end suite;
