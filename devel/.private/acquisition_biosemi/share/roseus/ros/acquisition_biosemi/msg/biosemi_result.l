;; Auto-generated. Do not edit!


(when (boundp 'acquisition_biosemi::biosemi_result)
  (if (not (find-package "ACQUISITION_BIOSEMI"))
    (make-package "ACQUISITION_BIOSEMI"))
  (shadow 'biosemi_result (find-package "ACQUISITION_BIOSEMI")))
(unless (find-package "ACQUISITION_BIOSEMI::BIOSEMI_RESULT")
  (make-package "ACQUISITION_BIOSEMI::BIOSEMI_RESULT"))

(in-package "ROS")
;;//! \htmlinclude biosemi_result.msg.html


(defclass acquisition_biosemi::biosemi_result
  :super ros::object
  :slots (_numero _nombre _frequence _valeurs _extra ))

(defmethod acquisition_biosemi::biosemi_result
  (:init
   (&key
    ((:numero __numero) 0)
    ((:nombre __nombre) 0)
    ((:frequence __frequence) 0)
    ((:valeurs __valeurs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:extra __extra) "")
    )
   (send-super :init)
   (setq _numero (round __numero))
   (setq _nombre (round __nombre))
   (setq _frequence (round __frequence))
   (setq _valeurs __valeurs)
   (setq _extra (string __extra))
   self)
  (:numero
   (&optional __numero)
   (if __numero (setq _numero __numero)) _numero)
  (:nombre
   (&optional __nombre)
   (if __nombre (setq _nombre __nombre)) _nombre)
  (:frequence
   (&optional __frequence)
   (if __frequence (setq _frequence __frequence)) _frequence)
  (:valeurs
   (&optional __valeurs)
   (if __valeurs (setq _valeurs __valeurs)) _valeurs)
  (:extra
   (&optional __extra)
   (if __extra (setq _extra __extra)) _extra)
  (:serialization-length
   ()
   (+
    ;; uint32 _numero
    4
    ;; uint32 _nombre
    4
    ;; uint32 _frequence
    4
    ;; float64[] _valeurs
    (* 8    (length _valeurs)) 4
    ;; string _extra
    4 (length _extra)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _numero
       (write-long _numero s)
     ;; uint32 _nombre
       (write-long _nombre s)
     ;; uint32 _frequence
       (write-long _frequence s)
     ;; float64[] _valeurs
     (write-long (length _valeurs) s)
     (dotimes (i (length _valeurs))
       (sys::poke (elt _valeurs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _extra
       (write-long (length _extra) s) (princ _extra s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _numero
     (setq _numero (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _nombre
     (setq _nombre (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _frequence
     (setq _frequence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _valeurs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _valeurs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _valeurs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string _extra
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _extra (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get acquisition_biosemi::biosemi_result :md5sum-) "cfeb2af8bc1398a6a39eda17ae2c7433")
(setf (get acquisition_biosemi::biosemi_result :datatype-) "acquisition_biosemi/biosemi_result")
(setf (get acquisition_biosemi::biosemi_result :definition-)
      "uint32 numero
uint32 nombre
uint32 frequence
float64[] valeurs
string extra
")



(provide :acquisition_biosemi/biosemi_result "cfeb2af8bc1398a6a39eda17ae2c7433")


