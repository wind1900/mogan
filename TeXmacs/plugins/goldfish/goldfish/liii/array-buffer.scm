;
; Copyright (C) 2024 The Goldfish Scheme Authors
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
; http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
; WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
; License for the specific language governing permissions and limitations
; under the License.
;

(define-library (liii array-buffer)
(import (liii lang))
(export array-buffer)
(begin

(define-case-class array-buffer ((data vector?) (size integer?) (capacity integer?))

(chained-define (@from-vector vec)
  (let ((len (vector-length vec)))
    (array-buffer (copy vec) len len)))

(chained-define (@from-list lst)
  (let ((len (length lst)))
    (array-buffer (copy lst (make-vector len)) len len)))

(define (check-bound n)
  (when (or (not (integer? n)) (< n 0) (>= n size))
    (key-error "array-buffer out of bound")))

(define (%collect) (copy data (make-vector size)))

(define (%length) size)

(define (%apply n)
  (check-bound n)
  (vector-ref data n))

(chained-define (%set! n v)
  (check-bound n)
  (vector-set! data n v)
  (%this))

(define (%update! . args)
  (apply %set! args))

(chained-define (%extend! n)
  (when (< capacity n)
    (if (= capacity 0)
      (set! capacity n)
      (let loop ()
        (when (< capacity n)
          (set! capacity (* 2 capacity))
          (loop))))
    (set! data (copy data (make-vector capacity) 0 size)))
  (%this))

(define (%size-hint! . args) (apply %extend! args))

(chained-define (%resize! n)
  (%extend! n)
  (set! size n)
  (%this))

(chained-define (%trim-to-size! n)
  (%extend! n)
  (set! size n)
  (when (> capacity (* 2 size))
    (set! data (copy data (make-vector size)))
    (set! capacity size))
  (%this))

(chained-define (%add-one! x)
  (%extend! (+ size 1))
  (vector-set! data size x)
  (set! size (+ size 1))
  (%this))

(chained-define (%clear!)
  (set! size 0)
  (%this))

(chained-define (%clear/shrink!)
  (set! size 0)
  (set! capacity 1)
  (set! data (make-vector 1))
  (%this))

(chained-define (%insert! index elem)
  (%extend! (+ size 1))
  (set! size (+ size 1))
  (check-bound index)
  (let loop ((p (- size 1)))
    (when (> p index)
      (vector-set! data p (vector-ref data (- p 1)))
      (loop (- p 1))))
  (vector-set! data index elem)
  (%this))

(typed-define (%equals (that case-class?))
  (and (that :is-instance-of 'array-buffer)
       ((%to-vector) :equals (that :to-vector))))

(define (%to-vector) (rich-vector (copy data (make-vector size))))

(define (%to-list) (rich-list (vector->list (copy data (make-vector size)))))

) ; end of array-buffer

) ; end of begin
) ; end of define-library

