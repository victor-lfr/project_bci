; Auto-generated. Do not edit!


(cl:in-package acquisition_biosemi-msg)


;//! \htmlinclude biosemi_result.msg.html

(cl:defclass <biosemi_result> (roslisp-msg-protocol:ros-message)
  ((numero
    :reader numero
    :initarg :numero
    :type cl:integer
    :initform 0)
   (nombre
    :reader nombre
    :initarg :nombre
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

(cl:defclass biosemi_result (<biosemi_result>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <biosemi_result>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'biosemi_result)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acquisition_biosemi-msg:<biosemi_result> is deprecated: use acquisition_biosemi-msg:biosemi_result instead.")))

(cl:ensure-generic-function 'numero-val :lambda-list '(m))
(cl:defmethod numero-val ((m <biosemi_result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acquisition_biosemi-msg:numero-val is deprecated.  Use acquisition_biosemi-msg:numero instead.")
  (numero m))

(cl:ensure-generic-function 'nombre-val :lambda-list '(m))
(cl:defmethod nombre-val ((m <biosemi_result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acquisition_biosemi-msg:nombre-val is deprecated.  Use acquisition_biosemi-msg:nombre instead.")
  (nombre m))

(cl:ensure-generic-function 'frequence-val :lambda-list '(m))
(cl:defmethod frequence-val ((m <biosemi_result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acquisition_biosemi-msg:frequence-val is deprecated.  Use acquisition_biosemi-msg:frequence instead.")
  (frequence m))

(cl:ensure-generic-function 'valeurs-val :lambda-list '(m))
(cl:defmethod valeurs-val ((m <biosemi_result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acquisition_biosemi-msg:valeurs-val is deprecated.  Use acquisition_biosemi-msg:valeurs instead.")
  (valeurs m))

(cl:ensure-generic-function 'extra-val :lambda-list '(m))
(cl:defmethod extra-val ((m <biosemi_result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acquisition_biosemi-msg:extra-val is deprecated.  Use acquisition_biosemi-msg:extra instead.")
  (extra m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <biosemi_result>) ostream)
  "Serializes a message object of type '<biosemi_result>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nombre)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nombre)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nombre)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nombre)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <biosemi_result>) istream)
  "Deserializes a message object of type '<biosemi_result>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nombre)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nombre)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nombre)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nombre)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<biosemi_result>)))
  "Returns string type for a message object of type '<biosemi_result>"
  "acquisition_biosemi/biosemi_result")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'biosemi_result)))
  "Returns string type for a message object of type 'biosemi_result"
  "acquisition_biosemi/biosemi_result")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<biosemi_result>)))
  "Returns md5sum for a message object of type '<biosemi_result>"
  "cfeb2af8bc1398a6a39eda17ae2c7433")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'biosemi_result)))
  "Returns md5sum for a message object of type 'biosemi_result"
  "cfeb2af8bc1398a6a39eda17ae2c7433")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<biosemi_result>)))
  "Returns full string definition for message of type '<biosemi_result>"
  (cl:format cl:nil "uint32 numero~%uint32 nombre~%uint32 frequence~%float64[] valeurs~%string extra~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'biosemi_result)))
  "Returns full string definition for message of type 'biosemi_result"
  (cl:format cl:nil "uint32 numero~%uint32 nombre~%uint32 frequence~%float64[] valeurs~%string extra~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <biosemi_result>))
  (cl:+ 0
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'valeurs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'extra))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <biosemi_result>))
  "Converts a ROS message object to a list"
  (cl:list 'biosemi_result
    (cl:cons ':numero (numero msg))
    (cl:cons ':nombre (nombre msg))
    (cl:cons ':frequence (frequence msg))
    (cl:cons ':valeurs (valeurs msg))
    (cl:cons ':extra (extra msg))
))
