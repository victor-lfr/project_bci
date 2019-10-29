// Auto-generated. Do not edit!

// (in-package acquisition_biosemi.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class biosemi_result {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.numero = null;
      this.nombre = null;
      this.frequence = null;
      this.valeurs = null;
      this.extra = null;
    }
    else {
      if (initObj.hasOwnProperty('numero')) {
        this.numero = initObj.numero
      }
      else {
        this.numero = 0;
      }
      if (initObj.hasOwnProperty('nombre')) {
        this.nombre = initObj.nombre
      }
      else {
        this.nombre = 0;
      }
      if (initObj.hasOwnProperty('frequence')) {
        this.frequence = initObj.frequence
      }
      else {
        this.frequence = 0;
      }
      if (initObj.hasOwnProperty('valeurs')) {
        this.valeurs = initObj.valeurs
      }
      else {
        this.valeurs = [];
      }
      if (initObj.hasOwnProperty('extra')) {
        this.extra = initObj.extra
      }
      else {
        this.extra = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type biosemi_result
    // Serialize message field [numero]
    bufferOffset = _serializer.uint32(obj.numero, buffer, bufferOffset);
    // Serialize message field [nombre]
    bufferOffset = _serializer.uint32(obj.nombre, buffer, bufferOffset);
    // Serialize message field [frequence]
    bufferOffset = _serializer.uint32(obj.frequence, buffer, bufferOffset);
    // Serialize message field [valeurs]
    bufferOffset = _arraySerializer.float64(obj.valeurs, buffer, bufferOffset, null);
    // Serialize message field [extra]
    bufferOffset = _serializer.string(obj.extra, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type biosemi_result
    let len;
    let data = new biosemi_result(null);
    // Deserialize message field [numero]
    data.numero = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [nombre]
    data.nombre = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [frequence]
    data.frequence = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [valeurs]
    data.valeurs = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [extra]
    data.extra = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.valeurs.length;
    length += object.extra.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acquisition_biosemi/biosemi_result';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfeb2af8bc1398a6a39eda17ae2c7433';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 numero
    uint32 nombre
    uint32 frequence
    float64[] valeurs
    string extra
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new biosemi_result(null);
    if (msg.numero !== undefined) {
      resolved.numero = msg.numero;
    }
    else {
      resolved.numero = 0
    }

    if (msg.nombre !== undefined) {
      resolved.nombre = msg.nombre;
    }
    else {
      resolved.nombre = 0
    }

    if (msg.frequence !== undefined) {
      resolved.frequence = msg.frequence;
    }
    else {
      resolved.frequence = 0
    }

    if (msg.valeurs !== undefined) {
      resolved.valeurs = msg.valeurs;
    }
    else {
      resolved.valeurs = []
    }

    if (msg.extra !== undefined) {
      resolved.extra = msg.extra;
    }
    else {
      resolved.extra = ''
    }

    return resolved;
    }
};

module.exports = biosemi_result;
