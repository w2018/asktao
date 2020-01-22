.class public Lcom/mysql/jdbc/SQLError;
.super Ljava/lang/Object;
.source "SQLError.java"


# static fields
.field private static final DEFAULT_WAIT_TIMEOUT_SECONDS:J = 0x7080L

.field private static final DUE_TO_TIMEOUT_FALSE:I = 0x0

.field private static final DUE_TO_TIMEOUT_MAYBE:I = 0x2

.field private static final DUE_TO_TIMEOUT_TRUE:I = 0x1

.field static final ER_WARNING_NOT_COMPLETE_ROLLBACK:I = 0x4ac

.field private static final JDBC_4_COMMUNICATIONS_EXCEPTION_CTOR:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public static final SQL_STATE_ACTIVE_SQL_TRANSACTION:Ljava/lang/String; = "25001"

.field public static final SQL_STATE_BASE_TABLE_NOT_FOUND:Ljava/lang/String; = "S0002"

.field public static final SQL_STATE_BASE_TABLE_OR_VIEW_ALREADY_EXISTS:Ljava/lang/String; = "S0001"

.field public static final SQL_STATE_BASE_TABLE_OR_VIEW_NOT_FOUND:Ljava/lang/String; = "42S02"

.field public static final SQL_STATE_CARDINALITY_VIOLATION:Ljava/lang/String; = "21000"

.field public static final SQL_STATE_CASE_NOT_FOUND_FOR_CASE_STATEMENT:Ljava/lang/String; = "20000"

.field public static final SQL_STATE_CLI_SPECIFIC_CONDITION:Ljava/lang/String; = "HY000"

.field public static final SQL_STATE_COLUMN_ALREADY_EXISTS:Ljava/lang/String; = "S0021"

.field public static final SQL_STATE_COLUMN_NOT_FOUND:Ljava/lang/String; = "S0022"

.field public static final SQL_STATE_COMMUNICATION_LINK_FAILURE:Ljava/lang/String; = "08S01"

.field public static final SQL_STATE_CONNECTION_FAILURE:Ljava/lang/String; = "08006"

.field public static final SQL_STATE_CONNECTION_IN_USE:Ljava/lang/String; = "08002"

.field public static final SQL_STATE_CONNECTION_NOT_OPEN:Ljava/lang/String; = "08003"

.field public static final SQL_STATE_CONNECTION_REJECTED:Ljava/lang/String; = "08004"

.field public static final SQL_STATE_DATA_TRUNCATED:Ljava/lang/String; = "01004"

.field public static final SQL_STATE_DATETIME_FIELD_OVERFLOW:Ljava/lang/String; = "22008"

.field public static final SQL_STATE_DISCONNECT_ERROR:Ljava/lang/String; = "01002"

.field public static final SQL_STATE_DIVISION_BY_ZERO:Ljava/lang/String; = "22012"

.field public static final SQL_STATE_DRIVER_NOT_CAPABLE:Ljava/lang/String; = "S1C00"

.field public static final SQL_STATE_ERROR_IN_ROW:Ljava/lang/String; = "01S01"

.field public static final SQL_STATE_ER_BAD_FIELD_ERROR:Ljava/lang/String; = "42S22"

.field public static final SQL_STATE_ER_DUP_FIELDNAME:Ljava/lang/String; = "42S21"

.field public static final SQL_STATE_ER_NO_SUCH_INDEX:Ljava/lang/String; = "42S12"

.field public static final SQL_STATE_ER_QUERY_INTERRUPTED:Ljava/lang/String; = "70100"

.field public static final SQL_STATE_ER_TABLE_EXISTS_ERROR:Ljava/lang/String; = "42S01"

.field public static final SQL_STATE_FEATURE_NOT_SUPPORTED:Ljava/lang/String; = "0A000"

.field public static final SQL_STATE_GENERAL_ERROR:Ljava/lang/String; = "S1000"

.field public static final SQL_STATE_ILLEGAL_ARGUMENT:Ljava/lang/String; = "S1009"

.field public static final SQL_STATE_INDEX_ALREADY_EXISTS:Ljava/lang/String; = "S0011"

.field public static final SQL_STATE_INDEX_NOT_FOUND:Ljava/lang/String; = "S0012"

.field public static final SQL_STATE_INSERT_VALUE_LIST_NO_MATCH_COL_LIST:Ljava/lang/String; = "21S01"

.field public static final SQL_STATE_INTEGRITY_CONSTRAINT_VIOLATION:Ljava/lang/String; = "23000"

.field public static final SQL_STATE_INVALID_AUTH_SPEC:Ljava/lang/String; = "28000"

.field public static final SQL_STATE_INVALID_CATALOG_NAME:Ljava/lang/String; = "3D000"

.field public static final SQL_STATE_INVALID_CHARACTER_VALUE_FOR_CAST:Ljava/lang/String; = "22018"

.field public static final SQL_STATE_INVALID_COLUMN_NUMBER:Ljava/lang/String; = "S1002"

.field public static final SQL_STATE_INVALID_CONDITION_NUMBER:Ljava/lang/String; = "35000"

.field public static final SQL_STATE_INVALID_CONNECTION_ATTRIBUTE:Ljava/lang/String; = "01S00"

.field public static final SQL_STATE_INVALID_CURSOR_STATE:Ljava/lang/String; = "24000"

.field public static final SQL_STATE_INVALID_DATETIME_FORMAT:Ljava/lang/String; = "22007"

.field public static final SQL_STATE_INVALID_LOGARITHM_ARGUMENT:Ljava/lang/String; = "2201E"

.field public static final SQL_STATE_INVALID_TRANSACTION_STATE:Ljava/lang/String; = "25000"

.field public static final SQL_STATE_INVALID_TRANSACTION_TERMINATION:Ljava/lang/String; = "2D000"

.field public static final SQL_STATE_MEMORY_ALLOCATION_ERROR:Ljava/lang/String; = "HY001"

.field public static final SQL_STATE_MEMORY_ALLOCATION_FAILURE:Ljava/lang/String; = "S1001"

.field public static final SQL_STATE_MORE_THAN_ONE_ROW_UPDATED_OR_DELETED:Ljava/lang/String; = "01S04"

.field public static final SQL_STATE_NO_DATA:Ljava/lang/String; = "02000"

.field public static final SQL_STATE_NO_DEFAULT_FOR_COLUMN:Ljava/lang/String; = "S0023"

.field public static final SQL_STATE_NO_ROWS_UPDATED_OR_DELETED:Ljava/lang/String; = "01S03"

.field public static final SQL_STATE_NULL_VALUE_NOT_ALLOWED:Ljava/lang/String; = "22004"

.field public static final SQL_STATE_NUMERIC_VALUE_OUT_OF_RANGE:Ljava/lang/String; = "22003"

.field public static final SQL_STATE_PRIVILEGE_NOT_REVOKED:Ljava/lang/String; = "01006"

.field public static final SQL_STATE_READ_ONLY_SQL_TRANSACTION:Ljava/lang/String; = "25006"

.field public static final SQL_STATE_RESIGNAL_WHEN_HANDLER_NOT_ACTIVE:Ljava/lang/String; = "0K000"

.field public static final SQL_STATE_ROLLBACK_SERIALIZATION_FAILURE:Ljava/lang/String; = "40001"

.field public static final SQL_STATE_SRE_FUNCTION_EXECUTED_NO_RETURN_STATEMENT:Ljava/lang/String; = "2F005"

.field public static final SQL_STATE_SRE_PROHIBITED_SQL_STATEMENT_ATTEMPTED:Ljava/lang/String; = "2F003"

.field public static final SQL_STATE_STACKED_DIAGNOSTICS_ACCESSED_WITHOUT_ACTIVE_HANDLER:Ljava/lang/String; = "0Z002"

.field public static final SQL_STATE_STRING_DATA_RIGHT_TRUNCATION:Ljava/lang/String; = "22001"

.field public static final SQL_STATE_SYNTAX_ERROR:Ljava/lang/String; = "42000"

.field public static final SQL_STATE_TIMEOUT_EXPIRED:Ljava/lang/String; = "S1T00"

.field public static final SQL_STATE_TRANSACTION_RESOLUTION_UNKNOWN:Ljava/lang/String; = "08007"

.field public static final SQL_STATE_UNABLE_TO_CONNECT_TO_DATASOURCE:Ljava/lang/String; = "08001"

.field public static final SQL_STATE_WARNING:Ljava/lang/String; = "01000"

.field public static final SQL_STATE_WRONG_NO_OF_PARAMETERS:Ljava/lang/String; = "07001"

.field public static final SQL_STATE_XAER_DUPID:Ljava/lang/String; = "XAE08"

.field public static final SQL_STATE_XAER_INVAL:Ljava/lang/String; = "XAE05"

.field public static final SQL_STATE_XAER_NOTA:Ljava/lang/String; = "XAE04"

.field public static final SQL_STATE_XAER_OUTSIDE:Ljava/lang/String; = "XAE09"

.field public static final SQL_STATE_XAER_RMFAIL:Ljava/lang/String; = "XAE07"

.field public static final SQL_STATE_XA_RBDEADLOCK:Ljava/lang/String; = "XA102"

.field public static final SQL_STATE_XA_RBROLLBACK:Ljava/lang/String; = "XA100"

.field public static final SQL_STATE_XA_RBTIMEOUT:Ljava/lang/String; = "XA106"

.field public static final SQL_STATE_XA_RMERR:Ljava/lang/String; = "XAE03"

.field private static mysqlToSql99State:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mysqlToSqlState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sqlStateMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x412

    const/16 v7, 0x410

    const/16 v6, 0x40e

    const/16 v5, 0x40d

    const/16 v4, 0x3fe

    .line 146
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    const-string v0, "com.mysql.jdbc.exceptions.jdbc4.CommunicationsException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Exception;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/SQLError;->JDBC_4_COMMUNICATIONS_EXCEPTION_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 161
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    .line 162
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01002"

    const-string v2, "SQLError.35"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01004"

    const-string v2, "SQLError.36"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01006"

    const-string v2, "SQLError.37"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01S00"

    const-string v2, "SQLError.38"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01S01"

    const-string v2, "SQLError.39"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01S03"

    const-string v2, "SQLError.40"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01S04"

    const-string v2, "SQLError.41"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "07001"

    const-string v2, "SQLError.42"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "08001"

    const-string v2, "SQLError.43"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "08002"

    const-string v2, "SQLError.44"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "08003"

    const-string v2, "SQLError.45"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "08004"

    const-string v2, "SQLError.46"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "08007"

    const-string v2, "SQLError.47"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "08S01"

    const-string v2, "SQLError.48"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "21S01"

    const-string v2, "SQLError.49"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "22003"

    const-string v2, "SQLError.50"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "22008"

    const-string v2, "SQLError.51"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "22012"

    const-string v2, "SQLError.52"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "40001"

    const-string v2, "SQLError.53"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "28000"

    const-string v2, "SQLError.54"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "42000"

    const-string v2, "SQLError.55"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "42S02"

    const-string v2, "SQLError.56"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0001"

    const-string v2, "SQLError.57"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0002"

    const-string v2, "SQLError.58"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0011"

    const-string v2, "SQLError.59"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0012"

    const-string v2, "SQLError.60"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0021"

    const-string v2, "SQLError.61"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0022"

    const-string v2, "SQLError.62"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0023"

    const-string v2, "SQLError.63"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S1000"

    const-string v2, "SQLError.64"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S1001"

    const-string v2, "SQLError.65"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S1002"

    const-string v2, "SQLError.66"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S1009"

    const-string v2, "SQLError.67"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S1C00"

    const-string v2, "SQLError.68"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S1T00"

    const-string v2, "SQLError.69"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    .line 200
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4f1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x51f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x66a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x413

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x469

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x46a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x417

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x41d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x438

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x439

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x480

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x481

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x482

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x483

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x484

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x485

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x486

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x487

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x488

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x489

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x520

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x522

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x537

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x538

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x587

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x735

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x736

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x414

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x419

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x41f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x420

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x421

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x423

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x424

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x425

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x426

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x427

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x428

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x429

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x42a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x42b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x42c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x42d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x42e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x42f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x430

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x431

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x432

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x433

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x43a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x43b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x43c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x442

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x443

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x44e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x452

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x453

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x456

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x458

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x459

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x45b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x45e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x460

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x461

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x46b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x46c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x46d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x473

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x474

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x475

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x476

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x477

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x478

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x479

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x47b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x47c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x47d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x48a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x48b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x48c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x48e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x48f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x492

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x493

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x494

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x495

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x498

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x499

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x49a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4cb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x501

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x506

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x518

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x519

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x51c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x51d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x51e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x521

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x523

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x524

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x526

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x527

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x528

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x52a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x52b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x52c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x52f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x532

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x533

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x534

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x535

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x539

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x53a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x55a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x57b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x57f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x582

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x585

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x586

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x591

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x592

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x593

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x59d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x59f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x5ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x5b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x5b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x5b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x5b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x62e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x62f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x630

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x65e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x669

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x697

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x6a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4d9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x418

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x41c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x491

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x5ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x5ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x615

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x632

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x6e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x6e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x743

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x57e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x588

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22003"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x69a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22003"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x50c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x557

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x5a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22008"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x555

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22012"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x52d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "24000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x52e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "24000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x49b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "25000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "25000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x415

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "28000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x6a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "28000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x751

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "28000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x6de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "35000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x416

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3D000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x422

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x470

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x41a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x41b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S02"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x455

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S02"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x47a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S02"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x41e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S0022"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S22"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "S1001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "40001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "40001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    .line 411
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4f1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x51f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x66a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x531

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "02000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x66b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "02000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x413

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x417

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x41d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x438

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x439

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x480

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x481

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x482

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x483

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x484

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x485

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x486

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x487

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x488

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x489

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x520

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x522

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x537

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x538

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x587

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x735

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x736

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x414

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x419

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x41f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x420

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x421

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x423

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x425

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x427

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x428

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x429

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x42a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x42b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x42c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x42d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x42e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x42f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x430

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x431

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x432

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x433

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x43b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x43c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x442

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x443

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x44e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x452

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x453

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x456

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x458

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x459

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x45b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x45e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x460

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x461

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x46b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x46c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x46d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x473

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x474

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x475

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x476

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x477

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x478

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x479

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x47b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x47c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x47d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x48a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x48b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x48c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x48e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x48f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x492

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x493

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x494

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x495

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x498

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x499

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x49a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4cb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x501

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x506

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x518

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x519

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x51c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x51d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x51e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x521

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x523

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x524

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x526

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x527

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x528

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x52a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x52b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x52c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x52f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x532

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x533

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x534

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x535

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x539

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x53a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x55a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x57b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x57f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x582

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x585

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x586

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x591

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x592

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x593

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x59d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x59f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x62e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x62f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x630

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x65e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x669

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x697

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x6a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4d9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x418

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x41c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x426

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x491

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x615

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x632

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x6e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x6e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x743

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x57e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x588

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22003"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x69a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22003"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x50c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x557

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22008"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x555

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22012"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x52d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "24000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x52e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "24000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x49b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "25000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "25000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x415

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "28000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x6a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "28000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x751

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "28000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x6de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "35000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x416

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3D000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x66d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0K000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x75f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0Z002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x53b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "20000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x422

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x470

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x472

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x76f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2201E"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x620

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "25001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x700

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "25006"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x517

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2F003"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x529

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2F005"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x41a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x41b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S02"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x455

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S02"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x47a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S02"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x43a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x424

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S21"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x41e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S22"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S22"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x525

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "70100"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HY001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HY001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x57a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XA100"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x64e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XA102"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x64d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XA106"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x579

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XAE03"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x575

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XAE04"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x576

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XAE05"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x577

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XAE07"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XAE08"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x578

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XAE09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "40001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "40001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :catch_1
    move-exception v0

    .line 153
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 154
    :catch_2
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 158
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/SQLError;->JDBC_4_COMMUNICATIONS_EXCEPTION_CTOR:Ljava/lang/reflect/Constructor;

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertShowWarningsToSQLWarnings(Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLWarning;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 656
    invoke-static {p0, v0, v0}, Lcom/mysql/jdbc/SQLError;->convertShowWarningsToSQLWarnings(Lcom/mysql/jdbc/Connection;IZ)Ljava/sql/SQLWarning;

    move-result-object v0

    return-object v0
.end method

.method static convertShowWarningsToSQLWarnings(Lcom/mysql/jdbc/Connection;IZ)Ljava/sql/SQLWarning;
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 685
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    .line 686
    :try_start_0
    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 687
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Ljava/sql/Statement;->setFetchSize(I)V

    .line 689
    invoke-interface {v1}, Ljava/sql/Statement;->getMaxRows()I

    move-result v0

    if-eqz v0, :cond_3

    .line 690
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/sql/Statement;->setMaxRows(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v11, v1

    .line 705
    :goto_0
    :try_start_2
    const-string v0, "SHOW WARNINGS"

    invoke-interface {v11, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v10

    move-object v8, v9

    .line 707
    :goto_1
    :try_start_3
    invoke-interface {v10}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 708
    const-string v0, "Code"

    invoke-interface {v10, v0}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 710
    if-eqz p2, :cond_6

    .line 711
    const/16 v0, 0x4f1

    if-eq v7, v0, :cond_0

    const/16 v0, 0x4f0

    if-ne v7, v0, :cond_5

    .line 712
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/MysqlDataTruncation;

    const-string v1, "Message"

    invoke-interface {v10, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlDataTruncation;-><init>(Ljava/lang/String;IZZIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 714
    if-nez v8, :cond_4

    :cond_1
    :goto_2
    move-object v8, v0

    .line 732
    goto :goto_1

    .line 694
    :cond_2
    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    :try_start_4
    invoke-interface {p0, v0, v1}, Lcom/mysql/jdbc/Connection;->createStatement(II)Ljava/sql/Statement;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 695
    const/high16 v0, -0x8000

    :try_start_5
    invoke-interface {v1, v0}, Ljava/sql/Statement;->setFetchSize(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_3
    move-object v11, v1

    goto :goto_0

    .line 717
    :cond_4
    :try_start_6
    invoke-virtual {v8, v0}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V

    :cond_5
    :goto_3
    move-object v0, v8

    goto :goto_2

    .line 722
    :cond_6
    const-string v0, "Message"

    invoke-interface {v10, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 724
    new-instance v0, Ljava/sql/SQLWarning;

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getUseSqlStateCodes()Z

    move-result v2

    invoke-static {v7, v2}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v7}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 726
    if-eqz v8, :cond_1

    .line 729
    invoke-virtual {v8, v0}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 740
    :catchall_0
    move-exception v0

    move-object v1, v10

    move-object v2, v11

    .line 742
    :goto_4
    if-eqz v1, :cond_e

    .line 744
    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_0

    move-object v1, v9

    .line 750
    :goto_5
    if-eqz v2, :cond_7

    .line 752
    :try_start_8
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_1

    .line 759
    :cond_7
    :goto_6
    if-eqz v1, :cond_9

    .line 760
    throw v1

    .line 734
    :cond_8
    if-eqz p2, :cond_b

    if-eqz v8, :cond_b

    .line 735
    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 740
    :cond_9
    throw v0

    .line 738
    :cond_a
    return-object v8

    .line 745
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 746
    goto :goto_5

    .line 753
    :catch_1
    move-exception v1

    goto :goto_6

    .line 742
    :cond_b
    if-eqz v10, :cond_d

    .line 744
    :try_start_a
    invoke-interface {v10}, Ljava/sql/ResultSet;->close()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_2

    move-object v0, v9

    .line 750
    :goto_7
    if-eqz v11, :cond_c

    .line 752
    :try_start_b
    invoke-interface {v11}, Ljava/sql/Statement;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_3

    .line 759
    :cond_c
    :goto_8
    if-eqz v0, :cond_a

    .line 760
    throw v0

    .line 745
    :catch_2
    move-exception v9

    move-object v0, v9

    .line 746
    goto :goto_7

    .line 753
    :catch_3
    move-exception v0

    goto :goto_8

    .line 740
    :catchall_1
    move-exception v0

    move-object v1, v9

    move-object v2, v9

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v1, v9

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v9

    move-object v2, v11

    goto :goto_4

    :cond_d
    move-object v0, v9

    goto :goto_7

    :cond_e
    move-object v1, v9

    goto :goto_5
.end method

.method public static createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1162
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    const-string v0, "java.sql.BatchUpdateException"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    const-class v2, [J

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    aput-object p0, v2, v8

    invoke-static {v0, v1, v2, p2}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    .line 1172
    :goto_0
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    return-object v0

    .line 1168
    :cond_0
    new-instance v0, Ljava/sql/BatchUpdateException;

    invoke-virtual {p0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    invoke-static {p1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt([J)[I

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[I)V

    .line 1170
    invoke-virtual {v0, p0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public static createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 985
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    new-instance v0, Lcom/mysql/jdbc/CommunicationsException;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/CommunicationsException;-><init>(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;)V

    .line 999
    :goto_0
    invoke-static {p6, v0, p0}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    :goto_1
    return-object v0

    .line 990
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/SQLError;->JDBC_4_COMMUNICATIONS_EXCEPTION_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-static {v0, v1, p6}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 992
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static createLinkFailureMessageBasedOnHeuristics(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;)Ljava/lang/String;
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1013
    const-wide/16 v2, 0x0

    .line 1014
    const/4 v1, 0x0

    .line 1016
    if-eqz p0, :cond_0

    .line 1017
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getInteractiveClient()Z

    move-result v1

    .line 1021
    if-eqz v1, :cond_6

    .line 1022
    const-string v4, "interactive_timeout"

    invoke-interface {p0, v4}, Lcom/mysql/jdbc/MySQLConnection;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1027
    :goto_0
    if-eqz v4, :cond_0

    .line 1029
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1036
    :cond_0
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1038
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1040
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-nez v7, :cond_1

    move-wide/from16 p1, v4

    .line 1044
    :cond_1
    sub-long v7, v4, p1

    .line 1045
    const-wide/16 v9, 0x3e8

    div-long v9, v7, v9

    .line 1047
    sub-long v11, v4, p3

    .line 1049
    const/4 v5, 0x0

    .line 1051
    const/4 v4, 0x0

    .line 1053
    const-wide/16 v13, 0x0

    cmp-long v13, v2, v13

    if-eqz v13, :cond_8

    .line 1054
    cmp-long v2, v9, v2

    if-lez v2, :cond_d

    .line 1055
    const/4 v3, 0x1

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1059
    const-string v4, "CommunicationsException.2"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    if-nez v1, :cond_7

    .line 1062
    const-string v1, "CommunicationsException.3"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v2

    move v2, v3

    .line 1079
    :goto_2
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 1081
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_9

    .line 1082
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1083
    const-string v3, "CommunicationsException.ServerPacketTimingInfo"

    invoke-static {v3, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    :goto_3
    if-eqz v1, :cond_3

    .line 1090
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1093
    :cond_3
    const-string v1, "CommunicationsException.11"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    const-string v1, "CommunicationsException.12"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    const-string v1, "CommunicationsException.13"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    :cond_4
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 1114
    const-string v1, "CommunicationsException.20"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getMaintainTimeStats()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getParanoid()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1117
    const-string v1, "\n\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-eqz v1, :cond_c

    .line 1119
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1120
    const-string v2, "CommunicationsException.ServerPacketTimingInfo"

    invoke-static {v2, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    :cond_5
    :goto_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1024
    :cond_6
    const-string v4, "wait_timeout"

    invoke-interface {p0, v4}, Lcom/mysql/jdbc/MySQLConnection;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1030
    :catch_0
    move-exception v2

    .line 1031
    const-wide/16 v2, 0x0

    goto/16 :goto_1

    .line 1064
    :cond_7
    const-string v1, "CommunicationsException.4"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v2

    move v2, v3

    goto/16 :goto_2

    .line 1068
    :cond_8
    const-wide/16 v1, 0x7080

    cmp-long v1, v9, v1

    if-lez v1, :cond_d

    .line 1069
    const/4 v2, 0x2

    .line 1071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    const-string v3, "CommunicationsException.5"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    const-string v3, "CommunicationsException.6"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    const-string v3, "CommunicationsException.7"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    const-string v3, "CommunicationsException.8"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1085
    :cond_9
    const-string v2, "CommunicationsException.ServerPacketTimingInfoNoRecv"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1102
    :cond_a
    move-object/from16 v0, p5

    instance-of v1, v0, Ljava/net/BindException;

    if-eqz v1, :cond_4

    .line 1103
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getLocalSocketAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getLocalSocketAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/Util;->interfaceExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1104
    const-string v1, "CommunicationsException.LocalSocketAddressNotAvailable"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1107
    :cond_b
    const-string v1, "CommunicationsException.TooManyClientConnections"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1122
    :cond_c
    const-string v1, "CommunicationsException.ServerPacketTimingInfoNoRecv"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_d
    move-object v1, v4

    move v2, v5

    goto/16 :goto_2
.end method

.method public static createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 865
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    return-object v0
.end method

.method public static createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 869
    new-instance v0, Ljava/sql/SQLException;

    invoke-direct {v0, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 870
    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    return-object v0
.end method

.method public static createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 887
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    return-object v0
.end method

.method public static createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 898
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    return-object v0
.end method

.method public static createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 906
    if-eqz p1, :cond_e

    .line 907
    :try_start_0
    const-string v0, "08"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 908
    if-eqz p3, :cond_1

    .line 909
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLTransientConnectionException;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLTransientConnectionException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 971
    :goto_0
    invoke-static {p4, v0, p5}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    .line 977
    :goto_1
    return-object v0

    .line 912
    :cond_0
    const-string v0, "com.mysql.jdbc.exceptions.jdbc4.MySQLTransientConnectionException"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    goto :goto_0

    .line 916
    :cond_1
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_2

    .line 917
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLNonTransientConnectionException;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLNonTransientConnectionException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 972
    :catch_0
    move-exception v0

    .line 973
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create correct SQLException class instance, error class/codes may be incorrect. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1000"

    invoke-direct {v1, v0, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-static {p4, v1, p5}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    goto :goto_1

    .line 919
    :cond_2
    :try_start_1
    const-string v0, "com.mysql.jdbc.exceptions.jdbc4.MySQLNonTransientConnectionException"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    goto/16 :goto_0

    .line 923
    :cond_3
    const-string v0, "22"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 924
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_4

    .line 925
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLDataException;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLDataException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 927
    :cond_4
    const-string v0, "com.mysql.jdbc.exceptions.jdbc4.MySQLDataException"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    goto/16 :goto_0

    .line 931
    :cond_5
    const-string v0, "23"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 933
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_6

    .line 934
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLIntegrityConstraintViolationException;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLIntegrityConstraintViolationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 936
    :cond_6
    const-string v0, "com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    goto/16 :goto_0

    .line 940
    :cond_7
    const-string v0, "42"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 941
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_8

    .line 942
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLSyntaxErrorException;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLSyntaxErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 944
    :cond_8
    const-string v0, "com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    goto/16 :goto_0

    .line 948
    :cond_9
    const-string v0, "40"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 949
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_a

    .line 950
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLTransactionRollbackException;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLTransactionRollbackException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 952
    :cond_a
    const-string v0, "com.mysql.jdbc.exceptions.jdbc4.MySQLTransactionRollbackException"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    goto/16 :goto_0

    .line 956
    :cond_b
    const-string v0, "70100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 957
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_c

    .line 958
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLQueryInterruptedException;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLQueryInterruptedException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 960
    :cond_c
    const-string v0, "com.mysql.jdbc.exceptions.jdbc4.MySQLQueryInterruptedException"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    goto/16 :goto_0

    .line 965
    :cond_d
    new-instance v0, Ljava/sql/SQLException;

    invoke-direct {v0, p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 968
    :cond_e
    new-instance v0, Ljava/sql/SQLException;

    invoke-direct {v0, p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 861
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    return-object v0
.end method

.method public static createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 874
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    return-object v0
.end method

.method public static createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 878
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Ljava/sql/SQLException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 880
    invoke-virtual {v0, p2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 883
    :cond_0
    invoke-static {p3, v0, p4}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    return-object v0
.end method

.method public static createSQLFeatureNotSupportedException()Ljava/sql/SQLException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1181
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    const-string v0, "java.sql.SQLFeatureNotSupportedException"

    invoke-static {v0, v1, v1, v1}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    .line 1187
    :goto_0
    return-object v0

    .line 1184
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/NotImplemented;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotImplemented;-><init>()V

    goto :goto_0
.end method

.method public static createSQLFeatureNotSupportedException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1200
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    const-string v0, "java.sql.SQLFeatureNotSupportedException"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2, p2}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    .line 1207
    :goto_0
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    return-object v0

    .line 1204
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/NotImplemented;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotImplemented;-><init>()V

    goto :goto_0
.end method

.method public static dumpSqlStatesMappingsAsXml()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 766
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 767
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 774
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 775
    invoke-virtual {v1, v0, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 778
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 779
    invoke-virtual {v1, v0, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 785
    :cond_1
    const-class v0, Lcom/mysql/jdbc/MysqlErrorNumbers;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 787
    const/4 v0, 0x0

    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 788
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 790
    const-string v5, "ER_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 791
    aget-object v5, v2, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 795
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<ErrorMappings>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 798
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/mysql/jdbc/SQLError;->mysqlToSql99(I)Ljava/lang/String;

    move-result-object v2

    .line 799
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/mysql/jdbc/SQLError;->mysqlToXOpen(I)Ljava/lang/String;

    move-result-object v1

    .line 801
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   <ErrorMapping mysqlErrorNumber=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" mysqlErrorName=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\" legacySqlState=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" sql92SqlState=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v2, :cond_5

    const-string v0, ""

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object v0, v2

    goto :goto_5

    .line 806
    :cond_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "</ErrorMappings>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 810
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static mysqlToSql99(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 814
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 816
    sget-object v1, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    sget-object v1, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 820
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HY000"

    goto :goto_0
.end method

.method static mysqlToSqlState(IZ)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 832
    if-eqz p1, :cond_0

    .line 833
    invoke-static {p0}, Lcom/mysql/jdbc/SQLError;->mysqlToSql99(I)Ljava/lang/String;

    move-result-object v0

    .line 836
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/mysql/jdbc/SQLError;->mysqlToXOpen(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static mysqlToXOpen(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 840
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 842
    sget-object v1, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    sget-object v1, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 846
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "S1000"

    goto :goto_0
.end method

.method private static runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1140
    if-eqz p0, :cond_0

    .line 1141
    invoke-interface {p0, p1, p2}, Lcom/mysql/jdbc/ExceptionInterceptor;->interceptException(Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    .line 1143
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 1147
    :cond_0
    return-object p1
.end method
