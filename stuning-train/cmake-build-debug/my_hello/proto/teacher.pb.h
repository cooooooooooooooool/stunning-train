// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: teacher.proto

#ifndef PROTOBUF_teacher_2eproto__INCLUDED
#define PROTOBUF_teacher_2eproto__INCLUDED

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 2006000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 2006001 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/unknown_field_set.h>
// @@protoc_insertion_point(includes)

// Internal implementation detail -- do not call these.
void  protobuf_AddDesc_teacher_2eproto();
void protobuf_AssignDesc_teacher_2eproto();
void protobuf_ShutdownFile_teacher_2eproto();

class teacher;

// ===================================================================

class teacher : public ::google::protobuf::Message {
 public:
  teacher();
  virtual ~teacher();

  teacher(const teacher& from);

  inline teacher& operator=(const teacher& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const teacher& default_instance();

  void Swap(teacher* other);

  // implements Message ----------------------------------------------

  teacher* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const teacher& from);
  void MergeFrom(const teacher& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:
  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // required string career = 4;
  inline bool has_career() const;
  inline void clear_career();
  static const int kCareerFieldNumber = 4;
  inline const ::std::string& career() const;
  inline void set_career(const ::std::string& value);
  inline void set_career(const char* value);
  inline void set_career(const char* value, size_t size);
  inline ::std::string* mutable_career();
  inline ::std::string* release_career();
  inline void set_allocated_career(::std::string* career);

  // required string name = 1;
  inline bool has_name() const;
  inline void clear_name();
  static const int kNameFieldNumber = 1;
  inline const ::std::string& name() const;
  inline void set_name(const ::std::string& value);
  inline void set_name(const char* value);
  inline void set_name(const char* value, size_t size);
  inline ::std::string* mutable_name();
  inline ::std::string* release_name();
  inline void set_allocated_name(::std::string* name);

  // required int32 id = 2;
  inline bool has_id() const;
  inline void clear_id();
  static const int kIdFieldNumber = 2;
  inline ::google::protobuf::int32 id() const;
  inline void set_id(::google::protobuf::int32 value);

  // optional int32 age = 3;
  inline bool has_age() const;
  inline void clear_age();
  static const int kAgeFieldNumber = 3;
  inline ::google::protobuf::int32 age() const;
  inline void set_age(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:teacher)
 private:
  inline void set_has_career();
  inline void clear_has_career();
  inline void set_has_name();
  inline void clear_has_name();
  inline void set_has_id();
  inline void clear_has_id();
  inline void set_has_age();
  inline void clear_has_age();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::std::string* career_;
  ::std::string* name_;
  ::google::protobuf::int32 id_;
  ::google::protobuf::int32 age_;
  friend void  protobuf_AddDesc_teacher_2eproto();
  friend void protobuf_AssignDesc_teacher_2eproto();
  friend void protobuf_ShutdownFile_teacher_2eproto();

  void InitAsDefaultInstance();
  static teacher* default_instance_;
};
// ===================================================================


// ===================================================================

// teacher

// required string career = 4;
inline bool teacher::has_career() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void teacher::set_has_career() {
  _has_bits_[0] |= 0x00000001u;
}
inline void teacher::clear_has_career() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void teacher::clear_career() {
  if (career_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    career_->clear();
  }
  clear_has_career();
}
inline const ::std::string& teacher::career() const {
  // @@protoc_insertion_point(field_get:teacher.career)
  return *career_;
}
inline void teacher::set_career(const ::std::string& value) {
  set_has_career();
  if (career_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    career_ = new ::std::string;
  }
  career_->assign(value);
  // @@protoc_insertion_point(field_set:teacher.career)
}
inline void teacher::set_career(const char* value) {
  set_has_career();
  if (career_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    career_ = new ::std::string;
  }
  career_->assign(value);
  // @@protoc_insertion_point(field_set_char:teacher.career)
}
inline void teacher::set_career(const char* value, size_t size) {
  set_has_career();
  if (career_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    career_ = new ::std::string;
  }
  career_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:teacher.career)
}
inline ::std::string* teacher::mutable_career() {
  set_has_career();
  if (career_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    career_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:teacher.career)
  return career_;
}
inline ::std::string* teacher::release_career() {
  clear_has_career();
  if (career_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = career_;
    career_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void teacher::set_allocated_career(::std::string* career) {
  if (career_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete career_;
  }
  if (career) {
    set_has_career();
    career_ = career;
  } else {
    clear_has_career();
    career_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:teacher.career)
}

// required string name = 1;
inline bool teacher::has_name() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void teacher::set_has_name() {
  _has_bits_[0] |= 0x00000002u;
}
inline void teacher::clear_has_name() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void teacher::clear_name() {
  if (name_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_->clear();
  }
  clear_has_name();
}
inline const ::std::string& teacher::name() const {
  // @@protoc_insertion_point(field_get:teacher.name)
  return *name_;
}
inline void teacher::set_name(const ::std::string& value) {
  set_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_ = new ::std::string;
  }
  name_->assign(value);
  // @@protoc_insertion_point(field_set:teacher.name)
}
inline void teacher::set_name(const char* value) {
  set_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_ = new ::std::string;
  }
  name_->assign(value);
  // @@protoc_insertion_point(field_set_char:teacher.name)
}
inline void teacher::set_name(const char* value, size_t size) {
  set_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_ = new ::std::string;
  }
  name_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:teacher.name)
}
inline ::std::string* teacher::mutable_name() {
  set_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:teacher.name)
  return name_;
}
inline ::std::string* teacher::release_name() {
  clear_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = name_;
    name_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void teacher::set_allocated_name(::std::string* name) {
  if (name_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete name_;
  }
  if (name) {
    set_has_name();
    name_ = name;
  } else {
    clear_has_name();
    name_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:teacher.name)
}

// required int32 id = 2;
inline bool teacher::has_id() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void teacher::set_has_id() {
  _has_bits_[0] |= 0x00000004u;
}
inline void teacher::clear_has_id() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void teacher::clear_id() {
  id_ = 0;
  clear_has_id();
}
inline ::google::protobuf::int32 teacher::id() const {
  // @@protoc_insertion_point(field_get:teacher.id)
  return id_;
}
inline void teacher::set_id(::google::protobuf::int32 value) {
  set_has_id();
  id_ = value;
  // @@protoc_insertion_point(field_set:teacher.id)
}

// optional int32 age = 3;
inline bool teacher::has_age() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void teacher::set_has_age() {
  _has_bits_[0] |= 0x00000008u;
}
inline void teacher::clear_has_age() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void teacher::clear_age() {
  age_ = 0;
  clear_has_age();
}
inline ::google::protobuf::int32 teacher::age() const {
  // @@protoc_insertion_point(field_get:teacher.age)
  return age_;
}
inline void teacher::set_age(::google::protobuf::int32 value) {
  set_has_age();
  age_ = value;
  // @@protoc_insertion_point(field_set:teacher.age)
}


// @@protoc_insertion_point(namespace_scope)

#ifndef SWIG
namespace google {
namespace protobuf {


}  // namespace google
}  // namespace protobuf
#endif  // SWIG

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_teacher_2eproto__INCLUDED
