; Auto-generated. Do not edit!


(cl:in-package acquisition_biosemi-msg)


;//! \htmlinclude biosemi_echantillon.msg.html

(cl:defclass <biosemi_echantillon> (roslisp-msg-protocol:ros-message)
  ((numero
    :reader numero
    :initarg :numero
    :type cl:integer
    :initform 0)
   (frequence
    :reader frequence
    :initarg :frequence
    :type cl:integer
    :initform 0)
   (valeurs
    :reader valeurs
    :initarg :valeurs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (extra
    :reader extra
    :initarg :extra
    :type cl:string
    :initform ""))
)

(cl:defclass biosemi_echantillon (<biosemi_echantillon>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <biosemi_echantillon>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'biosemi_echantillon)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acquisition_biosemi-msg:<biosemi_echantillon> is deprecated: use acquisition_biosemi-msg:biosemi_echantillon instead.")))

(cl:ensure-generic-function 'numero-val :lambda-list '(m))
(cl:defmethod numero-val ((m <biosemi_echantillon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acquisition_biosemi-msg:numero-val is deprecated.  Use acquisition_biosemi-msg:numero instead.")
  (numero m))

(cl:ensure-generic-function 'frequence-val :lambda-list '(m))
(cl:defmethod frequence-val ((m <biosemi_echantillon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acquisition_biosemi-msg:frequence-val is deprecated.  Use acquisition_biosemi-msg:frequence instead.")
  (frequence m))

(cl:ensure-generic-function 'valeurs-val :lambda-list '(m))
(cl:defmethod valeurs-val ((m <biosemi_echantillon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acquisition_biosemi-msg:valeurs-val is deprecated.  Use acquisition_biosemi-msg:valeurs instead.")
  (valeurs m))

(cl:ensure-generic-function 'extra-val :lambda-list '(m))
(cl:defmethod extra-val ((m <biosemi_echantillon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acquisition_biosemi-msg:extra-val is deprecated.  Use acquisition_biosemi-msg:extra instead.")
  (extra m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <biosemi_echantillon>) ostream)
  "Serializes a message object of type '<biosemi_echantillon>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frequence)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'valeurs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'valeurs))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'extra))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'extra))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <biosemi_echantillon>) istream)
  "Deserializes a message object of type '<biosemi_echantillon>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frequence)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'valeurs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'valeurs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'extra) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'extra) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<biosemi_echantillon>)))
  "Returns string type for a message object of type '<biosemi_echantillon>"
  "acquisition_biosemi/biosemi_echantillon")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'biosemi_echantillon)))
  "Returns string type for a message object of type 'biosemi_echantillon"
  "acquisition_biosemi/biosemi_echantillon")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<biosemi_echantillon>)))
  "Returns md5sum for a message object of type '<biosemi_echantillon>"
  "67396af516a2f6cfba37f1fe30b83eb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'biosemi_echantillon)))
  "Returns md5sum for a message object of type 'biosemi_echantillon"
  "67396af516a2f6cfba37f1fe30b83eb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<biosemi_echantillon>)))
  "Returns full string definition for message of type '<biosemi_echantillon>"
  (cl:format cl:nil "uint32 numero~%uint32 frequence~%float64[] valeurs~%string extra~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'biosemi_echantillon)))
  "Returns full string definition for message of type 'biosemi_echantillon"
  (cl:format cl:nil "uint32 numero~%uint32 frequence~%float64[] valeurs~%string extra~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <biosemi_echantillon>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'valeurs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'extra))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <biosemi_echantillon>))
  "Converts a ROS message object to a list"
  (cl:list 'biosemi_echantillon
    (cl:cons ':numero (numero msg))
    (cl:cons ':frequence (frequence msg))
    (cl:cons ':valeurs (valeurs msg))
    (cl:cons ':extra (extra msg))
))
