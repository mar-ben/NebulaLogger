<a name="LogEntryBuilder"></a>

## LogEntryBuilder

**Kind**: global class

-   [LogEntryBuilder](#LogEntryBuilder)
    -   [new LogEntryBuilder(loggingLevel, shouldSave, isConsoleLoggingEnabled)](#new_LogEntryBuilder_new)
    -   [.setMessage(message)](#LogEntryBuilder+setMessage)
    -   [.setRecordId(recordId)](#LogEntryBuilder+setRecordId)
    -   [.setRecord(record)](#LogEntryBuilder+setRecord)
    -   [.setError(apexException)](#LogEntryBuilder+setError)
    -   [.addTag(tag)](#LogEntryBuilder+addTag)
    -   [.addTags(tags)](#LogEntryBuilder+addTags)

<a name="new_LogEntryBuilder_new"></a>

### new LogEntryBuilder(loggingLevel, shouldSave, isConsoleLoggingEnabled)

Constructor used to generate each JavaScript-based log entry event
This class is the JavaScript-equivalent of the Apex class `LogEntryEventBuilder`

| Param                   | Description                                                                     |
| ----------------------- | ------------------------------------------------------------------------------- |
| loggingLevel            | The `LoggingLevel` enum to use for the builder's instance of `LogEntryEvent__e` |
| shouldSave              | Determines if the builder's instance of `LogEntryEvent__e` should be saved      |
| isConsoleLoggingEnabled | Determines if `console.log()` methods are execute                               |

<a name="LogEntryBuilder+setMessage"></a>

### logEntryBuilder.setMessage(message)

Sets the log entry event's message field

**Kind**: instance method of [<code>LogEntryBuilder</code>](#LogEntryBuilder)  
**Returns**: The same instance of `LogEntryEventBuilder`, useful for chaining methods

| Param   | Description                                        |
| ------- | -------------------------------------------------- |
| message | The string to use to set the entry's message field |

<a name="LogEntryBuilder+setRecordId"></a>

### logEntryBuilder.setRecordId(recordId)

Sets the log entry event's record fields

**Kind**: instance method of [<code>LogEntryBuilder</code>](#LogEntryBuilder)  
**Returns**: The same instance of `LogEntryEventBuilder`, useful for chaining methods

| Param    | Description                                       |
| -------- | ------------------------------------------------- |
| recordId | The ID of the SObject record related to the entry |

<a name="LogEntryBuilder+setRecord"></a>

### logEntryBuilder.setRecord(record)

Sets the log entry event's record fields

**Kind**: instance method of [<code>LogEntryBuilder</code>](#LogEntryBuilder)  
**Returns**: The same instance of `LogEntryEventBuilder`, useful for chaining methods

| Param  | Description                                                                                           |
| ------ | ----------------------------------------------------------------------------------------------------- |
| record | The `SObject` record related to the entry. The JSON of the record is automatically added to the entry |

<a name="LogEntryBuilder+setError"></a>

### logEntryBuilder.setError(apexException)

Sets the log entry event's exception fields

**Kind**: instance method of [<code>LogEntryBuilder</code>](#LogEntryBuilder)  
**Returns**: The same instance of `LogEntryEventBuilder`, useful for chaining methods

| Param         | Description                            |
| ------------- | -------------------------------------- |
| apexException | The instance of an `Exception` to use. |

<a name="LogEntryBuilder+addTag"></a>

### logEntryBuilder.addTag(tag)

Appends the tag to the existing list of tags

**Kind**: instance method of [<code>LogEntryBuilder</code>](#LogEntryBuilder)  
**Returns**: The same instance of `LogEntryEventBuilder`, useful for chaining methods

| Param | Description                                      |
| ----- | ------------------------------------------------ |
| tag   | The string to use as a tag for the current entry |

<a name="LogEntryBuilder+addTags"></a>

### logEntryBuilder.addTags(tags)

Appends the tag to the existing list of tags

**Kind**: instance method of [<code>LogEntryBuilder</code>](#LogEntryBuilder)  
**Returns**: The same instance of `LogEntryEventBuilder`, useful for chaining methods

| Param | Description                                              |
| ----- | -------------------------------------------------------- |
| tags  | The list of strings to use as tags for the current entry |
