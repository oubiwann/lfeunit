(defmodule unit-lfeunit-generated-tests
  (behaviour lfeunit-unit)
  (export all)
  (import
    (from lfeunit
      (check-failed-assert 2)
      (check-wrong-assert-exception 2))))

(include-lib "include/lfeunit-macros.lfe")

(deftestgen one-lambda
  (lambda () (is 'true)))

(deftestgen one-lambda-in-list
  (list
    (lambda () (is-not 'false))))

(deftestgen many-lambdas-in-list
  (list
    (lambda () (is 'true))
    (lambda () (is-not 'false))
    (lambda () (is-equal 1 1))))

(deftestgen lambda-with-nested-testset
  (lambda ()
    (list (is 'true)
          (is-not 'false)
          (is-equal 2 2)
          (list (is 'true)
                (is-not 'false)
                (is-equal 1 1)))))
