# Protocol Buffers

## Example

First let's look at a very simple example. Let's say you want to define a search request message format, where each search request has a query string, the particular page of results you are interested in, and a number of results per page. Here's the `.proto` file you use to define the message type.

```dart
message SearchRequest {
 required string query = 1;
 optional int32 page_number = 2;
 optional int32 result_per_page = 3;
}
```

The `SearchRequest` message definition specifies three fields (name/value pairs), one for each piece of data that you want to include in this type of message. Each field has a name and a type.

### Specifying Field Types

In the above example, all the fields are scalar types: two integers (`page_number` and `result_per_page`) and a string (`query`). However, you can also specify composite types for your fields, including enumerations and other message types.

### Assigning Field Numbers

As you can see, each field in the message definition has a unique number. These numbers are used to identify your fields in the message binary format, and should not be changed once your message type is in use. Note that field numbers in the range 1 through 15 take one byte to encode, including the field number and the field's type (you can find out more about this in Protocol Buffer Encoding). Field numbers in the range 16 through 2047 take two bytes. So you should reserve the field numbers 1 through 15 for very frequently occurring message elements. Remember to leave some room for frequently occurring elements that might be added in the future.

### Specifying Field Rules

You specify that message fields are one of the following:

* __required__: a well-formed message must have exactly one of this field.
* __optional__: a well-formed message can have zero or one of this field (but not more than one).
* __repeated__: this field can be repeated any number of times (including zero) in a well-formed message. The order of the repeated values will be preserved.

For historical reasons, repeated fields of scalar numeric types aren't encoded as efficiently as they could be. New code should use the special option [packed=true] to get a more efficient encoding.

### Adding More Message Types

Multiple message types can be defined in a single .proto file. This is useful if you are defining multiple related messages – so, for example, if you wanted to define the reply message format that corresponds to your SearchResponse message type, you could add it to the same .proto:

```dart
message SearchRequest {
  required string query = 1;
  optional int32 page_number = 2;
  optional int32 result_per_page = 3;
}

message SearchResponse {
 ...
}
```

Combining Messages leads to bloat While multiple message types (such as message, enum, and service) can be defined in a single `.proto` file, it can also lead to dependency bloat when large numbers of messages with varying dependencies are defined in a single file. It's recommended to include as few message types per `.proto` file as possible.

### Adding Comments

To add comments to your .proto files, use C/C++-style `//` and `/* ... */` syntax.

### Reserved Fields

If you update a message type by entirely removing a field, or commenting it out, future users can reuse the field number when making their own updates to the type. This can cause severe issues if they later load old versions of the same .proto, including data corruption, privacy bugs, and so on. One way to make sure this doesn't happen is to specify that the field numbers (and/or names, which can also cause issues for JSON serialization) of your deleted fields are reserved. The protocol buffer compiler will complain if any future users try to use these field identifiers.

### Optional Fields and Default Values

Elements in a message description can be labeled optional. A well-formed message may or may not contain an optional element. When a message is parsed, if it does not contain an optional element, the corresponding field in the parsed object is set to the default value for that field. The default value can be specified as part of the message description. For example, let's say you want to provide a default value of 10 for a SearchRequest's result_per_page value.

If the default value is not specified for an optional element, a type-specific default value is used instead: for strings, the default value is the empty string. For bytes, the default value is the empty byte string. For bools, the default value is false. For numeric types, the default value is zero. For enums, the default value is the first value listed in the enum's type definition. This means care must be taken when adding a value to the beginning of an enum value list.

### Enumerations

When you're defining a message type, you might want one of its fields to only have one of a pre-defined list of values. You can do this very simply by adding an `enum` to your message definition - a field with an `enum` type can only have one of a specified set of constants as its value (if you try to provide a different value, the parser will treat it like an unknown field).

You can define aliases by assigning the same value to different enum constants. To do this you need to set the `allow_alias` option to `true`, otherwise protocol compiler will generate an error message when aliases are found.

### Reserved Values

You can use other message types as field types.

### Importing Definitions

You can use definitions from other .proto files by importing them. To import another .proto's definitions, you add an import statement to the top of your file:

`import "myproject/other_protos.proto";`

## Resources

* [Protocol Buffers Overview](https://developers.google.com/protocol-buffers/docs/overview)