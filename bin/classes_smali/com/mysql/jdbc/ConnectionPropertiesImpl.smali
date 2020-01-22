.class public Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.super Ljava/lang/Object;
.source "ConnectionPropertiesImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/mysql/jdbc/ConnectionProperties;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;
    }
.end annotation


# static fields
.field private static final CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String; = null

.field private static final DEBUGING_PROFILING_CATEGORY:Ljava/lang/String; = null

.field private static final HA_CATEGORY:Ljava/lang/String; = null

.field private static final MISC_CATEGORY:Ljava/lang/String; = null

.field private static final NETWORK_CATEGORY:Ljava/lang/String; = null

.field private static final PERFORMANCE_CATEGORY:Ljava/lang/String; = null

.field private static final PROPERTY_CATEGORIES:[Ljava/lang/String; = null

.field private static final PROPERTY_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURITY_CATEGORY:Ljava/lang/String; = null

.field private static final STANDARD_LOGGER_NAME:Ljava/lang/String; = null

.field protected static final ZERO_DATETIME_BEHAVIOR_CONVERT_TO_NULL:Ljava/lang/String; = "convertToNull"

.field protected static final ZERO_DATETIME_BEHAVIOR_EXCEPTION:Ljava/lang/String; = "exception"

.field protected static final ZERO_DATETIME_BEHAVIOR_ROUND:Ljava/lang/String; = "round"

.field private static final serialVersionUID:J = 0x3b16c01963dec004L


# instance fields
.field private allowLoadLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowMasterDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowMultiQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowNanAndInf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowSlaveDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowUrlInLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private alwaysSendSetIsolation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private authenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private autoClosePStmtStreams:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoDeserialize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoGenerateTestcaseScriptAsBoolean:Z

.field private autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoReconnectForPoolsAsBoolean:Z

.field private autoSlowLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private blobSendChunkSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

.field private blobsAreStrings:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cacheCallableStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cacheDefaultTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cachePreparedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cacheResultSetMetaDataAsBoolean:Z

.field private cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cacheServerConfiguration:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private callableStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private characterEncodingAsString:Ljava/lang/String;

.field protected characterEncodingIsAliasForSjis:Z

.field private characterSetResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clientCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clientCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clientCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clientInfoProvider:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clobCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clobberStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private compensateOnDuplicateKeyUpdateCounts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private connectTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private connectionAttributes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private connectionCollation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private connectionLifecycleInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private continueBatchOnError:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private createDatabaseIfNotExist:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private defaultAuthenticationPlugin:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private defaultFetchSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private detectCustomCollations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private disabledAuthenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private disconnectOnExpiredPasswords:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dontCheckOnDuplicateKeyUpdateInSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dontTrackOpenResources:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dumpMetadataOnColumnNotFound:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dumpQueriesOnException:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dynamicCalendars:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private elideSetAutoCommits:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private emptyStringsConvertToZero:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private emulateLocators:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private emulateUnsupportedPstmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private enableEscapeProcessing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private enablePacketDebug:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private enableQueryTimeouts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private enabledSSLCipherSuites:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private enabledTLSProtocols:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private exceptionInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private explainSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private failOverReadOnly:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private functionsNeverReturnBlobs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private gatherPerformanceMetrics:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private generateSimpleParameterMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private getProceduresReturnsFunctions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private highAvailabilityAsBoolean:Z

.field private holdResultsOpenOverStatementClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private ignoreNonTxTables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private includeInnodbStatusInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private includeThreadDumpInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private includeThreadNamesAsStatementComment:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private initialTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private jdbcCompliantTruncationForReads:Z

.field protected largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

.field private loadBalanceAutoCommitStatementRegex:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceAutoCommitStatementThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private loadBalanceBlacklistTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private loadBalanceConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private loadBalanceExceptionChecker:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceHostRemovalGracePeriod:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private loadBalancePingTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private loadBalanceSQLExceptionSubclassFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceSQLStateFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceStrategy:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceValidateConnectionOnSwapServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private localSocketAddress:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private locatorFetchBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

.field private logSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private logXaCommands:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private maintainTimeStatsAsBoolean:Z

.field private maxAllowedPacket:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private maxQuerySizeToLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private maxReconnects:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private maxRowsAsInt:I

.field private metadataCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private netTimeoutForStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private noAccessToProcedureBodies:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private noDatetimeStringSync:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private noTimezoneConversionForDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private noTimezoneConversionForTimeType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private nullCatalogMeansCurrent:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private nullNamePatternMatchesAll:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private overrideSupportsIntegrityEnhancementFacility:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private packetDebugBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private padCharsWithSpace:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private paranoid:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private parseInfoCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private passwordCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private pedantic:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private pinGlobalTxToPhysicalConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private populateInsertRowWithDefaultValues:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private preparedStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private preparedStatementCacheSqlLimit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private processEscapeCodesForPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private profileSQLAsBoolean:Z

.field private profileSql:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private profilerEventHandler:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private propertiesTransform:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private queriesBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private queryTimeoutKillsConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private readFromMasterWhenNoSlaves:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private readOnlyPropagatesToServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private reconnectTxAtEndAsBoolean:Z

.field private relaxAutoCommit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private replicationConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private replicationEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private reportMetricsIntervalMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private requireSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private resourceId:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private resultSetSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private retainStatementAfterResultSetClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private retriesAllDown:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private rewriteBatchedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private rollbackOnPooledClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private roundRobinLoadBalance:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private runningCTS13:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private secondsBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private selfDestructOnPingMaxOperations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private selfDestructOnPingSecondsLifetime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private sendFractionalSeconds:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private serverAffinityOrder:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private serverConfigCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private serverTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private sessionVariables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private slowQueryThresholdMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private slowQueryThresholdNanos:Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

.field private socketFactoryClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private socketTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private socksProxyHost:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private socksProxyPort:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private statementInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private strictFloatingPoint:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private strictUpdates:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private tcpKeepAlive:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private tcpNoDelay:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private tcpRcvBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private tcpSndBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private tcpTrafficClass:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private tinyInt1isBit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field protected traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private transformedBitIsBoolean:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private treatUtilDateAsTimestamp:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private trustCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private trustCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private trustCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private useAffectedRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useBlobToStoreUTF8OutsideBMP:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useColumnNamesInFindColumn:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useCompression:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useConfigs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private useCursorFetch:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useDirectRowUnpack:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useDynamicCharsetInfo:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useFastDateParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useFastIntParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useGmtMillisForDatetimes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useHostsInPrivileges:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useInformationSchema:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useJDBCCompliantTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useJvmCharsetConverters:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useLegacyDatetimeCode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useLocalSessionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useLocalTransactionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useNanosForElapsedTime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useOldAliasMetadataBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useOldUTF8BehaviorAsBoolean:Z

.field private useOnlyServerErrorMessages:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useReadAheadInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useSSPSCompatibleTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useSqlStateCodes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useStreamLengthsInPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUltraDevWorkAround:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUnicodeAsBoolean:Z

.field private useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUsageAdvisorAsBoolean:Z

.field private utf8OutsideBmpExcludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private utf8OutsideBmpIncludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private verifyServerCertificate:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private yearIsDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private zeroDateTimeBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 600
    const-string v1, "ConnectionProperties.categoryConnectionAuthentication"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    .line 602
    const-string v1, "ConnectionProperties.categoryNetworking"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    .line 604
    const-string v1, "ConnectionProperties.categoryDebuggingProfiling"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    .line 606
    const-string v1, "ConnectionProperties.categorryHA"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    .line 608
    const-string v1, "ConnectionProperties.categoryMisc"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    .line 610
    const-string v1, "ConnectionProperties.categoryPerformance"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    .line 612
    const-string v1, "ConnectionProperties.categorySecurity"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    .line 614
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    sget-object v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    aput-object v3, v1, v2

    sput-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    .line 617
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    .line 622
    const-class v1, Lcom/mysql/jdbc/log/StandardLogger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->STANDARD_LOGGER_NAME:Ljava/lang/String;

    .line 632
    :try_start_0
    const-class v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 634
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 635
    const-class v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 641
    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 643
    throw v1

    .line 645
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "allowLoadLocalInfile"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.loadDataLocal"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.3"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowLoadLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 674
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "allowMultiQueries"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.allowMultiQueries"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.1"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMultiQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 677
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "allowNanAndInf"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.allowNANandINF"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowNanAndInf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 680
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "allowUrlInLocalInfile"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.allowUrlInLoadLocal"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.4"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowUrlInLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 683
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "alwaysSendSetIsolation"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.alwaysSendSetIsolation"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->alwaysSendSetIsolation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 686
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "autoClosePStmtStreams"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.autoClosePstmtStreams"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.12"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoClosePStmtStreams:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 689
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "replicationConnectionGroup"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.replicationConnectionGroup"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.27"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 692
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "allowMasterDownConnections"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.allowMasterDownConnections"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.27"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMasterDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 695
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "allowSlaveDownConnections"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.allowSlaveDownConnections"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.38"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowSlaveDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 698
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "readFromMasterWhenNoSlaves"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.readFromMasterWhenNoSlaves"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.38"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readFromMasterWhenNoSlaves:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 701
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "autoDeserialize"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.autoDeserialize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoDeserialize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 704
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "autoGenerateTestcaseScript"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.autoGenerateTestcaseScript"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.9"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScriptAsBoolean:Z

    .line 709
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "autoReconnect"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.autoReconnect"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.1"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 712
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "autoReconnectForPools"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.autoReconnectForPools"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.3"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPoolsAsBoolean:Z

    .line 717
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    const-string v1, "blobSendChunkSize"

    const/high16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "ConnectionProperties.blobSendChunkSize"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.1.9"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v8, -0x8000

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobSendChunkSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    .line 720
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "autoSlowLog"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.autoSlowLog"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.4"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoSlowLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 723
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "blobsAreStrings"

    const/4 v2, 0x0

    const-string v3, "Should the driver always treat BLOBs as Strings - specifically to work around dubious metadata returned by the server for GROUP BY clauses?"

    const-string v4, "5.0.8"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobsAreStrings:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 727
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "functionsNeverReturnBlobs"

    const/4 v2, 0x0

    const-string v3, "Should the driver always treat data from functions returning BLOBs as Strings - specifically to work around dubious metadata returned by the server for GROUP BY clauses?"

    const-string v4, "5.0.8"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->functionsNeverReturnBlobs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 732
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "cacheCallableStmts"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.cacheCallableStatements"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.2"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheCallableStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 735
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "cachePrepStmts"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.cachePrepStmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.10"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cachePreparedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 738
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "cacheResultSetMetadata"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.cacheRSMetadata"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.1"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 743
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "serverConfigCacheFactory"

    const-class v2, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectionProperties.serverConfigCacheFactory"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.1"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverConfigCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 747
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "cacheServerConfiguration"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.cacheServerConfiguration"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheServerConfiguration:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 750
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "callableStmtCacheSize"

    const/16 v2, 0x64

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.callableStmtCacheSize"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.1.2"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->callableStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 753
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "capitalizeTypeNames"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.capitalizeTypeNames"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.0.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 756
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "characterEncoding"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.characterEncoding"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.1g"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingAsString:Ljava/lang/String;

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingIsAliasForSjis:Z

    .line 763
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "characterSetResults"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.characterSetResults"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.13"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterSetResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 766
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "connectionAttributes"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.connectionAttributes"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.25"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionAttributes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 769
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "clientInfoProvider"

    const-string v2, "com.mysql.jdbc.JDBC4CommentClientInfoProvider"

    const-string v3, "ConnectionProperties.clientInfoProvider"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientInfoProvider:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 772
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "clobberStreamingResults"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.clobberStreamingResults"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.9"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobberStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 775
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "clobCharacterEncoding"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.clobCharacterEncoding"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 778
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "compensateOnDuplicateKeyUpdateCounts"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.compensateOnDuplicateKeyUpdateCounts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->compensateOnDuplicateKeyUpdateCounts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 780
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "connectionCollation"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.connectionCollation"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.13"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionCollation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 783
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "connectionLifecycleInterceptors"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.connectionLifecycleInterceptors"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.4"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionLifecycleInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 786
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "connectTimeout"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.connectTimeout"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.0.1"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/16 v8, 0x9

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 789
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "continueBatchOnError"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.continueBatchOnError"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.3"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->continueBatchOnError:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 792
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "createDatabaseIfNotExist"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.createDatabaseIfNotExist"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.9"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->createDatabaseIfNotExist:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 795
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "defaultFetchSize"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.defaultFetchSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.9"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultFetchSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 800
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useServerPrepStmts"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useServerPrepStmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 803
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "dontTrackOpenResources"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.dontTrackOpenResources"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontTrackOpenResources:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 806
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "dumpQueriesOnException"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.dumpQueriesOnException"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.3"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpQueriesOnException:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 809
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "dynamicCalendars"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.dynamicCalendars"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dynamicCalendars:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 812
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "elideSetAutoCommits"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.eliseSetAutoCommit"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.3"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->elideSetAutoCommits:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 815
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "emptyStringsConvertToZero"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.emptyStringsConvertToZero"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.8"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emptyStringsConvertToZero:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 818
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "emulateLocators"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.emulateLocators"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateLocators:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 821
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "emulateUnsupportedPstmts"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.emulateUnsupportedPstmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateUnsupportedPstmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 824
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "enablePacketDebug"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.enablePacketDebug"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.3"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enablePacketDebug:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 827
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "enableQueryTimeouts"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.enableQueryTimeouts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.6"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableQueryTimeouts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 830
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "explainSlowQueries"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.explainSlowQueries"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.2"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->explainSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 833
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "exceptionInterceptors"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.exceptionInterceptors"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.8"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->exceptionInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 837
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "failOverReadOnly"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.failoverReadOnly"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.12"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->failOverReadOnly:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 840
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "gatherPerfMetrics"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.gatherPerfMetrics"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.2"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->gatherPerformanceMetrics:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 843
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "generateSimpleParameterMetadata"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.generateSimpleParameterMetadata"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->generateSimpleParameterMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->highAvailabilityAsBoolean:Z

    .line 848
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "holdResultsOpenOverStatementClose"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.holdRSOpenOverStmtClose"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->holdResultsOpenOverStatementClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 851
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "includeInnodbStatusInDeadlockExceptions"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.includeInnodbStatusInDeadlockExceptions"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeInnodbStatusInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 854
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "includeThreadDumpInDeadlockExceptions"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.includeThreadDumpInDeadlockExceptions"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.15"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadDumpInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 857
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "includeThreadNamesAsStatementComment"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.includeThreadNamesAsStatementComment"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.15"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadNamesAsStatementComment:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 860
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "ignoreNonTxTables"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.ignoreNonTxTables"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.9"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->ignoreNonTxTables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 863
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "initialTimeout"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.initialTimeout"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1.1"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initialTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 866
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "interactiveClient"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.interactiveClient"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 869
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "jdbcCompliantTruncation"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.jdbcCompliantTruncation"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.2"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 872
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncationForReads:Z

    .line 874
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    const-string v1, "largeRowSizeThreshold"

    const/16 v2, 0x800

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.largeRowSizeThreshold"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.1"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v8, -0x8000

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    .line 877
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "loadBalanceStrategy"

    const-string v2, "random"

    const/4 v3, 0x0

    const-string v4, "ConnectionProperties.loadBalanceStrategy"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "5.0.6"

    sget-object v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v7, -0x8000

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceStrategy:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 880
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "serverAffinityOrder"

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, "ConnectionProperties.serverAffinityOrder"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "5.1.43"

    sget-object v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v7, -0x8000

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverAffinityOrder:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 883
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "loadBalanceBlacklistTimeout"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.loadBalanceBlacklistTimeout"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.0"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v8, -0x8000

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceBlacklistTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 886
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "loadBalancePingTimeout"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.loadBalancePingTimeout"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.13"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v8, -0x8000

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalancePingTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 889
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "loadBalanceValidateConnectionOnSwapServer"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.loadBalanceValidateConnectionOnSwapServer"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.13"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceValidateConnectionOnSwapServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 892
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "loadBalanceConnectionGroup"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.loadBalanceConnectionGroup"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.13"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 895
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "loadBalanceExceptionChecker"

    const-string v2, "com.mysql.jdbc.StandardLoadBalanceExceptionChecker"

    const/4 v3, 0x0

    const-string v4, "ConnectionProperties.loadBalanceExceptionChecker"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "5.1.13"

    sget-object v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v7, -0x8000

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceExceptionChecker:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 899
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "loadBalanceSQLStateFailover"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.loadBalanceSQLStateFailover"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.13"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLStateFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 902
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "loadBalanceSQLExceptionSubclassFailover"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.loadBalanceSQLExceptionSubclassFailover"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.13"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLExceptionSubclassFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 905
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "loadBalanceEnableJMX"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.loadBalanceEnableJMX"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.13"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 908
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "loadBalanceHostRemovalGracePeriod"

    const/16 v2, 0x3a98

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.loadBalanceHostRemovalGracePeriod"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.39"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const v8, 0x7fffffff

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceHostRemovalGracePeriod:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 911
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "loadBalanceAutoCommitStatementRegex"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.loadBalanceAutoCommitStatementRegex"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.15"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementRegex:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 914
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "loadBalanceAutoCommitStatementThreshold"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.loadBalanceAutoCommitStatementThreshold"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.15"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v8, -0x8000

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 917
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "localSocketAddress"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.localSocketAddress"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->localSocketAddress:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 920
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    const-string v1, "locatorFetchBufferSize"

    const/high16 v2, 0x10

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.locatorFetchBufferSize"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.2.1"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v8, -0x8000

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->locatorFetchBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    .line 923
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "logger"

    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->STANDARD_LOGGER_NAME:Ljava/lang/String;

    const-string v3, "ConnectionProperties.logger"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v6, Lcom/mysql/jdbc/log/Log;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->STANDARD_LOGGER_NAME:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.1"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 927
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "logSlowQueries"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.logSlowQueries"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.2"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 930
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "logXaCommands"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.logXaCommands"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logXaCommands:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 933
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "maintainTimeStats"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.maintainTimeStats"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.9"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStatsAsBoolean:Z

    .line 938
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "maxQuerySizeToLog"

    const/16 v2, 0x800

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.maxQuerySizeToLog"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.1.3"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v8, 0x4

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxQuerySizeToLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 941
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "maxReconnects"

    const/4 v2, 0x3

    const/4 v3, 0x1

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.maxReconnects"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1.1"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v8, 0x4

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxReconnects:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 944
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "retriesAllDown"

    const/16 v2, 0x78

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.retriesAllDown"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.6"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v8, 0x4

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retriesAllDown:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 947
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "maxRows"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.maxRows"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ConnectionProperties.allVersions"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v8, -0x8000

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 950
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRowsAsInt:I

    .line 952
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "metadataCacheSize"

    const/16 v2, 0x32

    const/4 v3, 0x1

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.metadataCacheSize"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.1.1"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->metadataCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 955
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "netTimeoutForStreamingResults"

    const/16 v2, 0x258

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.netTimeoutForStreamingResults"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.0"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v8, -0x8000

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->netTimeoutForStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 958
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "noAccessToProcedureBodies"

    const/4 v2, 0x0

    const-string v3, "When determining procedure parameter types for CallableStatements, and the connected user  can\'t access procedure bodies through \"SHOW CREATE PROCEDURE\" or select on mysql.proc  should the driver instead create basic metadata (all parameters reported as IN VARCHARs, but allowing registerOutParameter() to be called on them anyway) instead of throwing an exception?"

    const-string v4, "5.0.3"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noAccessToProcedureBodies:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 965
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "noDatetimeStringSync"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.noDatetimeStringSync"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noDatetimeStringSync:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 968
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "noTimezoneConversionForTimeType"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.noTzConversionForTimeType"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForTimeType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 971
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "noTimezoneConversionForDateType"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.noTzConversionForDateType"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.35"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 974
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "cacheDefaultTimezone"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.cacheDefaultTimezone"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.35"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheDefaultTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 977
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "nullCatalogMeansCurrent"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.nullCatalogMeansCurrent"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.8"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullCatalogMeansCurrent:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 980
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "nullNamePatternMatchesAll"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.nullNamePatternMatchesAll"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.8"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullNamePatternMatchesAll:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 983
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "packetDebugBufferSize"

    const/16 v2, 0x14

    const/4 v3, 0x1

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.packetDebugBufferSize"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.1.3"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v8, 0x7

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->packetDebugBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 986
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "padCharsWithSpace"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.padCharsWithSpace"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.6"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->padCharsWithSpace:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 989
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "paranoid"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.paranoid"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.1"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->paranoid:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 992
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "pedantic"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.pedantic"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pedantic:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 995
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "pinGlobalTxToPhysicalConnection"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.pinGlobalTxToPhysicalConnection"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.1"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pinGlobalTxToPhysicalConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 998
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "populateInsertRowWithDefaultValues"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.populateInsertRowWithDefaultValues"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->populateInsertRowWithDefaultValues:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1001
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "prepStmtCacheSize"

    const/16 v2, 0x19

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.prepStmtCacheSize"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.0.10"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/16 v8, 0xa

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1004
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "prepStmtCacheSqlLimit"

    const/16 v2, 0x100

    const/4 v3, 0x1

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.prepStmtCacheSqlLimit"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.0.10"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/16 v8, 0xb

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSqlLimit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1007
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "parseInfoCacheFactory"

    const-class v2, Lcom/mysql/jdbc/PerConnectionLRUFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectionProperties.parseInfoCacheFactory"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.1"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->parseInfoCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1010
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "processEscapeCodesForPrepStmts"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.processEscapeCodesForPrepStmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.12"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->processEscapeCodesForPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1013
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "profilerEventHandler"

    const-string v2, "com.mysql.jdbc.profiler.LoggingProfilerEventHandler"

    const-string v3, "ConnectionProperties.profilerEventHandler"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.6"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profilerEventHandler:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1017
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "profileSql"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.profileSqlDeprecated"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.0.14"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSql:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1020
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "profileSQL"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.profileSQL"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQLAsBoolean:Z

    .line 1025
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "propertiesTransform"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.connectionPropertiesTransform"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.4"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->propertiesTransform:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1028
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "queriesBeforeRetryMaster"

    const/16 v2, 0x32

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.queriesBeforeRetryMaster"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.0.2"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v8, 0x7

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queriesBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1031
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "queryTimeoutKillsConnection"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.queryTimeoutKillsConnection"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.9"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queryTimeoutKillsConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1034
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "reconnectAtTxEnd"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.reconnectAtTxEnd"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.10"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1037
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectTxAtEndAsBoolean:Z

    .line 1039
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "relaxAutoCommit"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.relaxAutoCommit"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.0.13"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->relaxAutoCommit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1042
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "reportMetricsIntervalMillis"

    const/16 v2, 0x7530

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.reportMetricsIntervalMillis"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.1.2"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reportMetricsIntervalMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1045
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "requireSSL"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.requireSSL"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->requireSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1048
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "resourceId"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.resourceId"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.1"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resourceId:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1051
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "resultSetSizeThreshold"

    const/16 v2, 0x64

    const-string v3, "ConnectionProperties.resultSetSizeThreshold"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resultSetSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1054
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "retainStatementAfterResultSetClose"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.retainStatementAfterResultSetClose"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.11"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retainStatementAfterResultSetClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1057
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "rewriteBatchedStatements"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.rewriteBatchedStatements"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.13"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rewriteBatchedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1060
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "rollbackOnPooledClose"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.rollbackOnPooledClose"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.15"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rollbackOnPooledClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1063
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "roundRobinLoadBalance"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.roundRobinLoadBalance"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.2"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->roundRobinLoadBalance:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1066
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "runningCTS13"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.runningCTS13"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->runningCTS13:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1069
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "secondsBeforeRetryMaster"

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.secondsBeforeRetryMaster"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.0.2"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/16 v8, 0x8

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->secondsBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1072
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "selfDestructOnPingSecondsLifetime"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.selfDestructOnPingSecondsLifetime"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.6"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const v8, 0x7fffffff

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingSecondsLifetime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1075
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "selfDestructOnPingMaxOperations"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.selfDestructOnPingMaxOperations"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.6"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const v8, 0x7fffffff

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingMaxOperations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1078
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "replicationEnableJMX"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.loadBalanceEnableJMX"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.27"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1081
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "serverTimezone"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.serverTimezone"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.2"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1084
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "sessionVariables"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.sessionVariables"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.8"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sessionVariables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1087
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "slowQueryThresholdMillis"

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.slowQueryThresholdMillis"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.1.2"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/16 v8, 0x9

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1090
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

    const-string v1, "slowQueryThresholdNanos"

    const-wide/16 v2, 0x0

    const-string v4, "ConnectionProperties.slowQueryThresholdNanos"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "5.0.7"

    sget-object v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdNanos:Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

    .line 1093
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "socketFactory"

    const-class v2, Lcom/mysql/jdbc/StandardSocketFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectionProperties.socketFactory"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.3"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketFactoryClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1096
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "socksProxyHost"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.socksProxyHost"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.34"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyHost:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1099
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "socksProxyPort"

    sget v2, Lcom/mysql/jdbc/SocksProxySocketFactory;->SOCKS_DEFAULT_PORT:I

    const/4 v3, 0x0

    const v4, 0xffff

    const-string v5, "ConnectionProperties.socksProxyPort"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.34"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyPort:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1102
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "socketTimeout"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.socketTimeout"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.0.1"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/16 v8, 0xa

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1105
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "statementInterceptors"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.statementInterceptors"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.1"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->statementInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1108
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "strictFloatingPoint"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.strictFloatingPoint"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictFloatingPoint:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1111
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "strictUpdates"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.strictUpdates"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.4"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictUpdates:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1114
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "overrideSupportsIntegrityEnhancementFacility"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.overrideSupportsIEF"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.12"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->overrideSupportsIntegrityEnhancementFacility:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1118
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "tcpNoDelay"

    const-string v2, "true"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "ConnectionProperties.tcpNoDelay"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpNoDelay:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1122
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "tcpKeepAlive"

    const-string v2, "true"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "ConnectionProperties.tcpKeepAlive"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpKeepAlive:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1126
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "tcpRcvBuf"

    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.tcpSoRcvBuf"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.0.7"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/high16 v8, -0x8000

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpRcvBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1130
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "tcpSndBuf"

    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "ConnectionProperties.tcpSoSndBuf"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.0.7"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/high16 v8, -0x8000

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpSndBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1134
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "tcpTrafficClass"

    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xff

    const-string v5, "ConnectionProperties.tcpTrafficClass"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.0.7"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/high16 v8, -0x8000

    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpTrafficClass:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1138
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "tinyInt1isBit"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.tinyInt1isBit"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.16"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tinyInt1isBit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1141
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "traceProtocol"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.traceProtocol"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.2"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1144
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "treatUtilDateAsTimestamp"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.treatUtilDateAsTimestamp"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->treatUtilDateAsTimestamp:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1147
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "transformedBitIsBoolean"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.transformedBitIsBoolean"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.9"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->transformedBitIsBoolean:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1150
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useBlobToStoreUTF8OutsideBMP"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useBlobToStoreUTF8OutsideBMP"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.3"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useBlobToStoreUTF8OutsideBMP:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1153
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "utf8OutsideBmpExcludedColumnNamePattern"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.utf8OutsideBmpExcludedColumnNamePattern"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.3"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/16 v6, 0x81

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpExcludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1156
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "utf8OutsideBmpIncludedColumnNamePattern"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.utf8OutsideBmpIncludedColumnNamePattern"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.3"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/16 v6, 0x81

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpIncludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1159
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useCompression"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useCompression"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.17"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCompression:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1162
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useColumnNamesInFindColumn"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useColumnNamesInFindColumn"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useColumnNamesInFindColumn:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1165
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "useConfigs"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useConfigs"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useConfigs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1168
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useCursorFetch"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useCursorFetch"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCursorFetch:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1171
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useDynamicCharsetInfo"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.useDynamicCharsetInfo"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.6"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDynamicCharsetInfo:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1174
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useDirectRowUnpack"

    const/4 v2, 0x1

    const-string v3, "Use newer result set row unpacking code that skips a copy from network buffers  to a MySQL packet instance and instead reads directly into the result set row data buffers."

    const-string v4, "5.1.1"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDirectRowUnpack:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1179
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useFastIntParsing"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.useFastIntParsing"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.4"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastIntParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1182
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useFastDateParsing"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.useFastDateParsing"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastDateParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1185
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useHostsInPrivileges"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.useHostsInPrivileges"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.2"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useHostsInPrivileges:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1187
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useInformationSchema"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useInformationSchema"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useInformationSchema:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1189
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useJDBCCompliantTimezoneShift"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useJDBCCompliantTimezoneShift"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJDBCCompliantTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1192
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useLocalSessionState"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useLocalSessionState"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalSessionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1195
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useLocalTransactionState"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useLocalTransactionState"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalTransactionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1198
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useLegacyDatetimeCode"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.useLegacyDatetimeCode"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.6"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLegacyDatetimeCode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1201
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "sendFractionalSeconds"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.sendFractionalSeconds"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.37"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sendFractionalSeconds:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1204
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useNanosForElapsedTime"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useNanosForElapsedTime"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useNanosForElapsedTime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1207
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useOldAliasMetadataBehavior"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useOldAliasMetadataBehavior"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.4"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldAliasMetadataBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1210
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useOldUTF8Behavior"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useOldUtf8Behavior"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.6"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8BehaviorAsBoolean:Z

    .line 1215
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useOnlyServerErrorMessages"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.useOnlyServerErrorMessages"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.15"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOnlyServerErrorMessages:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1218
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useReadAheadInput"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.useReadAheadInput"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useReadAheadInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1221
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useSqlStateCodes"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.useSqlStateCodes"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.3"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSqlStateCodes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1224
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useSSL"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useSSL"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.2"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1227
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useSSPSCompatibleTimezoneShift"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useSSPSCompatibleTimezoneShift"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.5"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSPSCompatibleTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1230
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useStreamLengthsInPrepStmts"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.useStreamLengthsInPrepStmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.2"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useStreamLengthsInPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1233
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useTimezone"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useTimezone"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.2"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1236
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "ultraDevHack"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.ultraDevHack"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.0.3"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUltraDevWorkAround:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1239
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useUnbufferedInput"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.useUnbufferedInput"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0.11"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1242
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useUnicode"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.useUnicode"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.1g"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicodeAsBoolean:Z

    .line 1248
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useUsageAdvisor"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useUsageAdvisor"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.1"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/16 v6, 0xa

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisorAsBoolean:Z

    .line 1253
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "yearIsDateType"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.yearIsDateType"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.9"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->yearIsDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1256
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "zeroDateTimeBehavior"

    const-string v2, "exception"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "exception"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "round"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "convertToNull"

    aput-object v5, v3, v4

    const-string v4, "ConnectionProperties.zeroDateTimeBehavior"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "exception"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "round"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "convertToNull"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3.1.4"

    sget-object v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v7, -0x8000

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->zeroDateTimeBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1262
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useJvmCharsetConverters"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useJvmCharsetConverters"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0.1"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJvmCharsetConverters:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1265
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useGmtMillisForDatetimes"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useGmtMillisForDatetimes"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.12"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useGmtMillisForDatetimes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1268
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "dumpMetadataOnColumnNotFound"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.dumpMetadataOnColumnNotFound"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.13"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpMetadataOnColumnNotFound:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1273
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "clientCertificateKeyStoreUrl"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.clientCertificateKeyStoreUrl"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1276
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "trustCertificateKeyStoreUrl"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.trustCertificateKeyStoreUrl"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1279
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "clientCertificateKeyStoreType"

    const-string v2, "JKS"

    const-string v3, "ConnectionProperties.clientCertificateKeyStoreType"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1282
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "clientCertificateKeyStorePassword"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.clientCertificateKeyStorePassword"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1285
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "trustCertificateKeyStoreType"

    const-string v2, "JKS"

    const-string v3, "ConnectionProperties.trustCertificateKeyStoreType"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1288
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "trustCertificateKeyStorePassword"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.trustCertificateKeyStorePassword"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.0"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/16 v6, 0xa

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1291
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "verifyServerCertificate"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.verifyServerCertificate"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.6"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->verifyServerCertificate:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1294
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "useAffectedRows"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.useAffectedRows"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useAffectedRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1297
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "passwordCharacterEncoding"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.passwordCharacterEncoding"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.7"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->passwordCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1300
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v1, "maxAllowedPacket"

    const/4 v2, -0x1

    const-string v3, "ConnectionProperties.maxAllowedPacket"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.8"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxAllowedPacket:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1303
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "authenticationPlugins"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.authenticationPlugins"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.19"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->authenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1306
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "disabledAuthenticationPlugins"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.disabledAuthenticationPlugins"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.19"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disabledAuthenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1309
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "defaultAuthenticationPlugin"

    const-string v2, "com.mysql.jdbc.authentication.MysqlNativePasswordPlugin"

    const-string v3, "ConnectionProperties.defaultAuthenticationPlugin"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.19"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultAuthenticationPlugin:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1313
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "disconnectOnExpiredPasswords"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.disconnectOnExpiredPasswords"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.23"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disconnectOnExpiredPasswords:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1316
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "getProceduresReturnsFunctions"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.getProceduresReturnsFunctions"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.26"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getProceduresReturnsFunctions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1319
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "detectCustomCollations"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.detectCustomCollations"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.29"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectCustomCollations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1322
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "serverRSAPublicKeyFile"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.serverRSAPublicKeyFile"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.31"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1325
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "allowPublicKeyRetrieval"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.allowPublicKeyRetrieval"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.31"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1328
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "dontCheckOnDuplicateKeyUpdateInSQL"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.dontCheckOnDuplicateKeyUpdateInSQL"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.32"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontCheckOnDuplicateKeyUpdateInSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1331
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "readOnlyPropagatesToServer"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.readOnlyPropagatesToServer"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.35"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readOnlyPropagatesToServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1334
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "enabledSSLCipherSuites"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.enabledSSLCipherSuites"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.35"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledSSLCipherSuites:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1337
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "enabledTLSProtocols"

    const/4 v2, 0x0

    const-string v3, "ConnectionProperties.enabledTLSProtocols"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.44"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledTLSProtocols:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1340
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "enableEscapeProcessing"

    const/4 v2, 0x1

    const-string v3, "ConnectionProperties.enableEscapeProcessing"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.1.37"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v6, -0x8000

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableEscapeProcessing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1424
    return-void
.end method

.method protected static exposeAsDriverPropertyInfo(Ljava/util/Properties;I)[Ljava/sql/DriverPropertyInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 666
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$1;

    invoke-direct {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$1;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$1;->exposeAsDriverPropertyInfoInternal(Ljava/util/Properties;I)[Ljava/sql/DriverPropertyInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected exposeAsDriverPropertyInfoInternal(Ljava/util/Properties;I)[Ljava/sql/DriverPropertyInfo;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1344
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initializeProperties(Ljava/util/Properties;)V

    .line 1346
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1348
    add-int v2, v0, p2

    .line 1350
    new-array v3, v2, [Ljava/sql/DriverPropertyInfo;

    move v1, p2

    .line 1352
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1353
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    sub-int v4, v1, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 1356
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 1358
    if-eqz p1, :cond_0

    .line 1359
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->initializeFrom(Ljava/util/Properties;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 1362
    :cond_0
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getAsDriverPropertyInfo()Ljava/sql/DriverPropertyInfo;

    move-result-object v0

    aput-object v0, v3, v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    const-string v0, "ConnectionProperties.InternalPropertiesFailure"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1369
    :cond_1
    return-object v3
.end method

.method protected exposeAsProperties(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1373
    if-nez p1, :cond_0

    .line 1374
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 1377
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1379
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1380
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 1383
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 1385
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v3

    .line 1387
    if-eqz v3, :cond_1

    .line 1388
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    const-string v0, "Internal properties failure"

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1395
    :cond_2
    return-object p1
.end method

.method public exposeAsProperties(Ljava/util/Properties;Z)Ljava/util/Properties;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1399
    if-nez p1, :cond_0

    .line 1400
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 1403
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1405
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 1406
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 1409
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 1411
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v3

    .line 1413
    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->isExplicitlySet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1414
    :cond_1
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1416
    :catch_0
    move-exception v0

    .line 1417
    const-string v1, "Internal properties failure"

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1421
    :cond_3
    return-object p1
.end method

.method public exposeAsXml()Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 1435
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1436
    const-string v0, "<ConnectionProperties>"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1440
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    array-length v13, v0

    .line 1442
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move v0, v10

    .line 1444
    :goto_0
    if-ge v0, v13, :cond_0

    .line 1445
    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    new-instance v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;

    invoke-direct {v3, p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;-><init>(Lcom/mysql/jdbc/ConnectionPropertiesImpl;)V

    invoke-interface {v14, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1452
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v1, "user"

    const-string v3, "ConnectionProperties.Username"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConnectionProperties.allVersions"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const v6, -0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1455
    new-instance v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "password"

    const-string v1, "ConnectionProperties.Password"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "ConnectionProperties.allVersions"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const v9, -0x7ffffffe

    move-object v5, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1459
    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;

    .line 1460
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1461
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    iget-object v4, v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getOrder()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1466
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    iget-object v1, v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getOrder()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v10

    .line 1471
    :goto_1
    if-ge v3, v12, :cond_3

    .line 1472
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 1473
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 1474
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;

    .line 1475
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getOrder()I

    move-result v2

    .line 1477
    const/high16 v4, -0x8000

    if-ne v2, v4, :cond_1

    .line 1478
    iget-object v1, v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->alpha:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1480
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1481
    iget-object v2, v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1483
    if-nez v2, :cond_2

    .line 1484
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1485
    iget-object v1, v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    :cond_2
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    const-string v0, "Internal properties failure"

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_3
    move v3, v10

    .line 1492
    :goto_3
    if-ge v3, v13, :cond_b

    .line 1493
    :try_start_1
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;

    .line 1495
    const-string v1, "\n <PropertyCategory name=\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    const-string v1, "\">"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    iget-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1500
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 1501
    const-string v2, "\n  <Property name=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    const-string v2, "\" required=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    iget-boolean v2, v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->required:Z

    if-eqz v2, :cond_6

    const-string v2, "Yes"

    :goto_5
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    const-string v2, "\" default=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getDefaultValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1509
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getDefaultValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1512
    :cond_5
    const-string v2, "\" sortOrder=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getOrder()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1514
    const-string v2, "\" since=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    iget-object v2, v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->sinceVersion:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    const-string v2, "\">\n"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    const-string v2, "    "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    iget-object v1, v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->description:Ljava/lang/String;

    .line 1519
    const-string v2, "&"

    const-string v6, "&amp;"

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<"

    const-string v6, "&lt;"

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ">"

    const-string v6, "&gt;"

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1521
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    const-string v1, "\n  </Property>"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1504
    :cond_6
    const-string v2, "No"

    goto :goto_5

    .line 1526
    :cond_7
    iget-object v0, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->alpha:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 1527
    const-string v1, "\n  <Property name=\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    const-string v1, "\" required=\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    iget-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->required:Z

    if-eqz v1, :cond_9

    const-string v1, "Yes"

    :goto_7
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    const-string v1, "\" default=\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1535
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1538
    :cond_8
    const-string v1, "\" sortOrder=\"alpha\" since=\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    iget-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->sinceVersion:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    const-string v1, "\">\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    const-string v1, "    "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    iget-object v0, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->description:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    const-string v0, "\n  </Property>"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1530
    :cond_9
    const-string v1, "No"

    goto :goto_7

    .line 1546
    :cond_a
    const-string v0, "\n </PropertyCategory>"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1492
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    .line 1552
    :cond_b
    const-string v0, "\n</ConnectionProperties>"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllowLoadLocalInfile()Z
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowLoadLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowMasterDownConnections()Z
    .locals 1

    .prologue
    .line 4868
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMasterDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowMultiQueries()Z
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMultiQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowNanAndInf()Z
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowNanAndInf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowPublicKeyRetrieval()Z
    .locals 1

    .prologue
    .line 4928
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowSlaveDownConnections()Z
    .locals 1

    .prologue
    .line 4876
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowSlaveDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowUrlInLocalInfile()Z
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowUrlInLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAlwaysSendSetIsolation()Z
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->alwaysSendSetIsolation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAuthenticationPlugins()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4816
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->authenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoClosePStmtStreams()Z
    .locals 1

    .prologue
    .line 3702
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoClosePStmtStreams:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAutoDeserialize()Z
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoDeserialize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAutoGenerateTestcaseScript()Z
    .locals 1

    .prologue
    .line 1617
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScriptAsBoolean:Z

    return v0
.end method

.method public getAutoReconnectForPools()Z
    .locals 1

    .prologue
    .line 1626
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPoolsAsBoolean:Z

    return v0
.end method

.method public getAutoSlowLog()Z
    .locals 1

    .prologue
    .line 4565
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoSlowLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getBlobSendChunkSize()I
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobSendChunkSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getBlobsAreStrings()Z
    .locals 1

    .prologue
    .line 4549
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobsAreStrings:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCacheCallableStatements()Z
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheCallableStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCacheCallableStmts()Z
    .locals 1

    .prologue
    .line 3959
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getCacheCallableStatements()Z

    move-result v0

    return v0
.end method

.method public getCacheDefaultTimezone()Z
    .locals 1

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheDefaultTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCachePrepStmts()Z
    .locals 1

    .prologue
    .line 3977
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getCachePreparedStatements()Z

    move-result v0

    return v0
.end method

.method public getCachePreparedStatements()Z
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cachePreparedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getCacheResultSetMetadata()Z
    .locals 1

    .prologue
    .line 1662
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetaDataAsBoolean:Z

    return v0
.end method

.method public getCacheServerConfiguration()Z
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheServerConfiguration:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCallableStatementCacheSize()I
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->callableStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getCallableStmtCacheSize()I
    .locals 1

    .prologue
    .line 3995
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getCallableStatementCacheSize()I

    move-result v0

    return v0
.end method

.method public getCapitalizeTypeNames()Z
    .locals 1

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCharacterSetResults()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterSetResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStorePassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4076
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4094
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4112
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfoProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4400
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientInfoProvider:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClobCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClobberStreamingResults()Z
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobberStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCompensateOnDuplicateKeyUpdateCounts()Z
    .locals 1

    .prologue
    .line 4645
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->compensateOnDuplicateKeyUpdateCounts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getConnectionAttributes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionAttributes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionCollation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionCollation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionLifecycleInterceptors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4573
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionLifecycleInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContinueBatchOnError()Z
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->continueBatchOnError:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCreateDatabaseIfNotExist()Z
    .locals 1

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->createDatabaseIfNotExist:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDefaultAuthenticationPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4832
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultAuthenticationPlugin:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFetchSize()I
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultFetchSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getDetectCustomCollations()Z
    .locals 1

    .prologue
    .line 4912
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectCustomCollations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDisabledAuthenticationPlugins()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4824
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disabledAuthenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectOnExpiredPasswords()Z
    .locals 1

    .prologue
    .line 4856
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disconnectOnExpiredPasswords:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDontCheckOnDuplicateKeyUpdateInSQL()Z
    .locals 1

    .prologue
    .line 4945
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontCheckOnDuplicateKeyUpdateInSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDontTrackOpenResources()Z
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontTrackOpenResources:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDumpMetadataOnColumnNotFound()Z
    .locals 1

    .prologue
    .line 3756
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpMetadataOnColumnNotFound:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDumpQueriesOnException()Z
    .locals 1

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpQueriesOnException:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDynamicCalendars()Z
    .locals 1

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dynamicCalendars:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getElideSetAutoCommits()Z
    .locals 1

    .prologue
    .line 1806
    const/4 v0, 0x0

    return v0
.end method

.method public getEmptyStringsConvertToZero()Z
    .locals 1

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emptyStringsConvertToZero:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEmulateLocators()Z
    .locals 1

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateLocators:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEmulateUnsupportedPstmts()Z
    .locals 1

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateUnsupportedPstmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEnableEscapeProcessing()Z
    .locals 1

    .prologue
    .line 4989
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableEscapeProcessing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEnablePacketDebug()Z
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enablePacketDebug:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEnableQueryTimeouts()Z
    .locals 1

    .prologue
    .line 4346
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableQueryTimeouts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEnabledSSLCipherSuites()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4973
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledSSLCipherSuites:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledTLSProtocols()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4981
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledTLSProtocols:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExceptionInterceptors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4704
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->exceptionInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExplainSlowQueries()Z
    .locals 1

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->explainSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getFailOverReadOnly()Z
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->failOverReadOnly:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getFunctionsNeverReturnBlobs()Z
    .locals 1

    .prologue
    .line 4557
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->functionsNeverReturnBlobs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getGatherPerfMetrics()Z
    .locals 1

    .prologue
    .line 3878
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    return v0
.end method

.method public getGatherPerformanceMetrics()Z
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->gatherPerformanceMetrics:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getGenerateSimpleParameterMetadata()Z
    .locals 1

    .prologue
    .line 4274
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->generateSimpleParameterMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getGetProceduresReturnsFunctions()Z
    .locals 1

    .prologue
    .line 4904
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getProceduresReturnsFunctions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method protected getHighAvailability()Z
    .locals 1

    .prologue
    .line 1884
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->highAvailabilityAsBoolean:Z

    return v0
.end method

.method public getHoldResultsOpenOverStatementClose()Z
    .locals 1

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->holdResultsOpenOverStatementClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIgnoreNonTxTables()Z
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->ignoreNonTxTables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIncludeInnodbStatusInDeadlockExceptions()Z
    .locals 1

    .prologue
    .line 4541
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeInnodbStatusInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIncludeThreadDumpInDeadlockExceptions()Z
    .locals 1

    .prologue
    .line 4800
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadDumpInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIncludeThreadNamesAsStatementComment()Z
    .locals 1

    .prologue
    .line 4808
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadNamesAsStatementComment:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getInitialTimeout()I
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initialTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getInteractiveClient()Z
    .locals 1

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIsInteractiveClient()Z
    .locals 1

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getJdbcCompliantTruncation()Z
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getJdbcCompliantTruncationForReads()Z
    .locals 1

    .prologue
    .line 3810
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncationForReads:Z

    return v0
.end method

.method public getLargeRowSizeThreshold()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4509
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceAutoCommitStatementRegex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4792
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementRegex:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceAutoCommitStatementThreshold()I
    .locals 1

    .prologue
    .line 4784
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceBlacklistTimeout()I
    .locals 1

    .prologue
    .line 4653
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceBlacklistTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceConnectionGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4732
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceEnableJMX()Z
    .locals 1

    .prologue
    .line 4764
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getLoadBalanceExceptionChecker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4740
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceExceptionChecker:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceHostRemovalGracePeriod()I
    .locals 1

    .prologue
    .line 4776
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceHostRemovalGracePeriod:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLoadBalancePingTimeout()I
    .locals 1

    .prologue
    .line 4661
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalancePingTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceSQLExceptionSubclassFailover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4756
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLExceptionSubclassFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceSQLStateFailover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4748
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLStateFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4421
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceStrategy:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceValidateConnectionOnSwapServer()Z
    .locals 1

    .prologue
    .line 4724
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceValidateConnectionOnSwapServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4238
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->localSocketAddress:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocatorFetchBufferSize()I
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->locatorFetchBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLogSlowQueries()Z
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getLogXaCommands()Z
    .locals 1

    .prologue
    .line 4292
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logXaCommands:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getLogger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaintainTimeStats()Z
    .locals 1

    .prologue
    .line 1983
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStatsAsBoolean:Z

    return v0
.end method

.method public getMaxAllowedPacket()I
    .locals 1

    .prologue
    .line 4712
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxAllowedPacket:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getMaxQuerySizeToLog()I
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxQuerySizeToLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getMaxReconnects()I
    .locals 1

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxReconnects:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getMaxRows()I
    .locals 1

    .prologue
    .line 2010
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRowsAsInt:I

    return v0
.end method

.method public getMetadataCacheSize()I
    .locals 1

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->metadataCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getNetTimeoutForStreamingResults()I
    .locals 1

    .prologue
    .line 4328
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->netTimeoutForStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getNoAccessToProcedureBodies()Z
    .locals 1

    .prologue
    .line 4040
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noAccessToProcedureBodies:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNoDatetimeStringSync()Z
    .locals 1

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noDatetimeStringSync:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNoTimezoneConversionForDateType()Z
    .locals 1

    .prologue
    .line 3648
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNoTimezoneConversionForTimeType()Z
    .locals 1

    .prologue
    .line 3630
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForTimeType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNullCatalogMeansCurrent()Z
    .locals 1

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullCatalogMeansCurrent:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNullNamePatternMatchesAll()Z
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullNamePatternMatchesAll:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getOverrideSupportsIntegrityEnhancementFacility()Z
    .locals 1

    .prologue
    .line 3612
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->overrideSupportsIntegrityEnhancementFacility:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getPacketDebugBufferSize()I
    .locals 1

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->packetDebugBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getPadCharsWithSpace()Z
    .locals 1

    .prologue
    .line 4364
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->padCharsWithSpace:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getParanoid()Z
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->paranoid:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getParseInfoCacheFactory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->parseInfoCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4690
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->passwordCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4696
    :cond_0
    :goto_0
    return-object v0

    .line 4693
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4696
    :cond_2
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method public getPedantic()Z
    .locals 1

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pedantic:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getPinGlobalTxToPhysicalConnection()Z
    .locals 1

    .prologue
    .line 3846
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pinGlobalTxToPhysicalConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getPopulateInsertRowWithDefaultValues()Z
    .locals 1

    .prologue
    .line 4413
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->populateInsertRowWithDefaultValues:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getPrepStmtCacheSize()I
    .locals 1

    .prologue
    .line 4013
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getPreparedStatementCacheSize()I

    move-result v0

    return v0
.end method

.method public getPrepStmtCacheSqlLimit()I
    .locals 1

    .prologue
    .line 4031
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v0

    return v0
.end method

.method public getPreparedStatementCacheSize()I
    .locals 1

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPreparedStatementCacheSqlLimit()I
    .locals 1

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSqlLimit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getProcessEscapeCodesForPrepStmts()Z
    .locals 1

    .prologue
    .line 3720
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->processEscapeCodesForPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getProfileSQL()Z
    .locals 1

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getProfileSql()Z
    .locals 1

    .prologue
    .line 2100
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQLAsBoolean:Z

    return v0
.end method

.method public getProfilerEventHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4581
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profilerEventHandler:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertiesTransform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->propertiesTransform:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueriesBeforeRetryMaster()I
    .locals 1

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queriesBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getQueryTimeoutKillsConnection()Z
    .locals 1

    .prologue
    .line 4716
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queryTimeoutKillsConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReadFromMasterWhenNoSlaves()Z
    .locals 1

    .prologue
    .line 4884
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readFromMasterWhenNoSlaves:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReadOnlyPropagatesToServer()Z
    .locals 1

    .prologue
    .line 4965
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readOnlyPropagatesToServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReconnectAtTxEnd()Z
    .locals 1

    .prologue
    .line 2136
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectTxAtEndAsBoolean:Z

    return v0
.end method

.method public getRelaxAutoCommit()Z
    .locals 1

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->relaxAutoCommit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReplicationConnectionGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4860
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplicationEnableJMX()Z
    .locals 1

    .prologue
    .line 4892
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReportMetricsIntervalMillis()I
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reportMetricsIntervalMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getRequireSSL()Z
    .locals 1

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->requireSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3774
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resourceId:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultSetSizeThreshold()I
    .locals 1

    .prologue
    .line 4310
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resultSetSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getRetainStatementAfterResultSetClose()Z
    .locals 1

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retainStatementAfterResultSetClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getRetriesAllDown()I
    .locals 1

    .prologue
    .line 4673
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retriesAllDown:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getRewriteBatchedStatements()Z
    .locals 1

    .prologue
    .line 3792
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rewriteBatchedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getRollbackOnPooledClose()Z
    .locals 1

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rollbackOnPooledClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getRoundRobinLoadBalance()Z
    .locals 1

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->roundRobinLoadBalance:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getRunningCTS13()Z
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->runningCTS13:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getSecondsBeforeRetryMaster()I
    .locals 1

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->secondsBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSelfDestructOnPingMaxOperations()I
    .locals 1

    .prologue
    .line 4621
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingMaxOperations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSelfDestructOnPingSecondsLifetime()I
    .locals 1

    .prologue
    .line 4613
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingSecondsLifetime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSendFractionalSeconds()Z
    .locals 1

    .prologue
    .line 4605
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sendFractionalSeconds:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getServerAffinityOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4429
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverAffinityOrder:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerConfigCacheFactory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4848
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverConfigCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerRSAPublicKeyFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4916
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionVariables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sessionVariables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlowQueryThresholdMillis()I
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSlowQueryThresholdNanos()J
    .locals 2

    .prologue
    .line 4485
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdNanos:Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getValueAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSocketFactory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3923
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getSocketFactoryClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocketFactoryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketFactoryClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSocksProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4953
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyHost:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocksProxyPort()I
    .locals 1

    .prologue
    .line 4961
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyPort:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getStatementInterceptors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4493
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->statementInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrictFloatingPoint()Z
    .locals 1

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictFloatingPoint:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getStrictUpdates()Z
    .locals 1

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictUpdates:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTcpKeepAlive()Z
    .locals 1

    .prologue
    .line 4445
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpKeepAlive:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1

    .prologue
    .line 4437
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpNoDelay:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTcpRcvBuf()I
    .locals 1

    .prologue
    .line 4453
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpRcvBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getTcpSndBuf()I
    .locals 1

    .prologue
    .line 4461
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpSndBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getTcpTrafficClass()I
    .locals 1

    .prologue
    .line 4469
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpTrafficClass:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getTinyInt1isBit()Z
    .locals 1

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tinyInt1isBit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTraceProtocol()Z
    .locals 1

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTransformedBitIsBoolean()Z
    .locals 1

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->transformedBitIsBoolean:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTreatUtilDateAsTimestamp()Z
    .locals 1

    .prologue
    .line 4202
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->treatUtilDateAsTimestamp:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTrustCertificateKeyStorePassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4130
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustCertificateKeyStoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4148
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustCertificateKeyStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4166
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUltraDevHack()Z
    .locals 1

    .prologue
    .line 3896
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getUseUltraDevWorkAround()Z

    move-result v0

    return v0
.end method

.method public getUseAffectedRows()Z
    .locals 1

    .prologue
    .line 4681
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useAffectedRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseBlobToStoreUTF8OutsideBMP()Z
    .locals 1

    .prologue
    .line 4517
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useBlobToStoreUTF8OutsideBMP:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseColumnNamesInFindColumn()Z
    .locals 1

    .prologue
    .line 4629
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useColumnNamesInFindColumn:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseCompression()Z
    .locals 1

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCompression:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseConfigs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4265
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useConfigs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseCursorFetch()Z
    .locals 1

    .prologue
    .line 3594
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCursorFetch:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseDirectRowUnpack()Z
    .locals 1

    .prologue
    .line 4501
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDirectRowUnpack:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseDynamicCharsetInfo()Z
    .locals 1

    .prologue
    .line 4382
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDynamicCharsetInfo:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseFastDateParsing()Z
    .locals 1

    .prologue
    .line 4220
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastDateParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseFastIntParsing()Z
    .locals 1

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastIntParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseGmtMillisForDatetimes()Z
    .locals 1

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useGmtMillisForDatetimes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseHostsInPrivileges()Z
    .locals 1

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useHostsInPrivileges:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseInformationSchema()Z
    .locals 1

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useInformationSchema:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseJDBCCompliantTimezoneShift()Z
    .locals 1

    .prologue
    .line 3684
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJDBCCompliantTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseJvmCharsetConverters()Z
    .locals 1

    .prologue
    .line 3828
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJvmCharsetConverters:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseLegacyDatetimeCode()Z
    .locals 1

    .prologue
    .line 4597
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLegacyDatetimeCode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseLocalSessionState()Z
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalSessionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseLocalTransactionState()Z
    .locals 1

    .prologue
    .line 4637
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalTransactionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseNanosForElapsedTime()Z
    .locals 1

    .prologue
    .line 4477
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useNanosForElapsedTime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseOldAliasMetadataBehavior()Z
    .locals 1

    .prologue
    .line 4058
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldAliasMetadataBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseOldUTF8Behavior()Z
    .locals 1

    .prologue
    .line 2347
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8BehaviorAsBoolean:Z

    return v0
.end method

.method public getUseOnlyServerErrorMessages()Z
    .locals 1

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOnlyServerErrorMessages:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseReadAheadInput()Z
    .locals 1

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useReadAheadInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseSSL()Z
    .locals 1

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseSSPSCompatibleTimezoneShift()Z
    .locals 1

    .prologue
    .line 4184
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSPSCompatibleTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseServerPrepStmts()Z
    .locals 1

    .prologue
    .line 3941
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getUseServerPreparedStmts()Z

    move-result v0

    return v0
.end method

.method public getUseServerPreparedStmts()Z
    .locals 1

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseSqlStateCodes()Z
    .locals 1

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSqlStateCodes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseStreamLengthsInPrepStmts()Z
    .locals 1

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useStreamLengthsInPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseTimezone()Z
    .locals 1

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseUltraDevWorkAround()Z
    .locals 1

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUltraDevWorkAround:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseUnbufferedInput()Z
    .locals 1

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseUnicode()Z
    .locals 1

    .prologue
    .line 2446
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicodeAsBoolean:Z

    return v0
.end method

.method public getUseUsageAdvisor()Z
    .locals 1

    .prologue
    .line 2455
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisorAsBoolean:Z

    return v0
.end method

.method public getUtf8OutsideBmpExcludedColumnNamePattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4525
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpExcludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtf8OutsideBmpIncludedColumnNamePattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4533
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpIncludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerifyServerCertificate()Z
    .locals 1

    .prologue
    .line 4589
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->verifyServerCertificate:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getYearIsDateType()Z
    .locals 1

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->yearIsDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getZeroDateTimeBehavior()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->zeroDateTimeBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeFromRef(Ljavax/naming/Reference;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2486
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2488
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2489
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 2492
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 2494
    if-eqz p1, :cond_0

    .line 2495
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->initializeFrom(Ljavax/naming/Reference;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2488
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2497
    :catch_0
    move-exception v0

    .line 2498
    const-string v0, "Internal properties failure"

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2502
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->postInitialization()V

    .line 2503
    return-void
.end method

.method protected initializeProperties(Ljava/util/Properties;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2513
    if-eqz p1, :cond_2

    .line 2515
    const-string v0, "profileSql"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2517
    if-eqz v0, :cond_0

    .line 2518
    const-string v1, "profileSQL"

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2521
    :cond_0
    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 2523
    const-string v1, "HOST"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2524
    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2525
    const-string v1, "password"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    const-string v1, "DBNAME"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2527
    const-string v1, "PORT"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2528
    const-string v1, "profileSql"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2532
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 2533
    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 2536
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 2538
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->initializeFrom(Ljava/util/Properties;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2532
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 2539
    :catch_0
    move-exception v0

    .line 2540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionProperties.unableToInitDriverProperties"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2545
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->postInitialization()V

    .line 2547
    :cond_2
    return-void
.end method

.method public isUseSSLExplicit()Z
    .locals 1

    .prologue
    .line 2401
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    iget-boolean v0, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->wasExplicitlySet:Z

    return v0
.end method

.method protected postInitialization()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2552
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSql:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2553
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSql:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 2556
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectTxAtEndAsBoolean:Z

    .line 2559
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getMaxRows()I

    move-result v0

    if-nez v0, :cond_1

    .line 2561
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValueAsObject(Ljava/lang/Object;)V

    .line 2567
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2569
    if-eqz v0, :cond_2

    .line 2572
    :try_start_0
    const-string v1, "abc"

    .line 2573
    invoke-static {v1, v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2582
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2584
    :try_start_1
    const-string v0, "java.util.LinkedHashMap"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2590
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetaDataAsBoolean:Z

    .line 2591
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicodeAsBoolean:Z

    .line 2592
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingAsString:Ljava/lang/String;

    .line 2593
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->highAvailabilityAsBoolean:Z

    .line 2594
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPoolsAsBoolean:Z

    .line 2595
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRowsAsInt:I

    .line 2596
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQLAsBoolean:Z

    .line 2597
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisorAsBoolean:Z

    .line 2598
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8BehaviorAsBoolean:Z

    .line 2599
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScriptAsBoolean:Z

    .line 2600
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStatsAsBoolean:Z

    .line 2601
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getJdbcCompliantTruncation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncationForReads:Z

    .line 2603
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getUseCursorFetch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2605
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setDetectServerPreparedStmts(Z)V

    .line 2607
    :cond_4
    return-void

    .line 2574
    :catch_0
    move-exception v1

    .line 2575
    const-string v1, "ConnectionProperties.unsupportedCharacterEncoding"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0S100"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2585
    :catch_1
    move-exception v0

    .line 2586
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    goto/16 :goto_0
.end method

.method public setAllowLoadLocalInfile(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowLoadLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2616
    return-void
.end method

.method public setAllowMasterDownConnections(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4872
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMasterDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4873
    return-void
.end method

.method public setAllowMultiQueries(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMultiQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2625
    return-void
.end method

.method public setAllowNanAndInf(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowNanAndInf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2634
    return-void
.end method

.method public setAllowPublicKeyRetrieval(Z)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4932
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getUpdateCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4933
    const-string v0, "ConnectionProperties.dynamicChangeIsNotAllowed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "\'allowPublicKeyRetrieval\'"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4937
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4938
    return-void
.end method

.method public setAllowSlaveDownConnections(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4880
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowSlaveDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4881
    return-void
.end method

.method public setAllowUrlInLocalInfile(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowUrlInLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2643
    return-void
.end method

.method public setAlwaysSendSetIsolation(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->alwaysSendSetIsolation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2652
    return-void
.end method

.method public setAuthenticationPlugins(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4812
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->authenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4813
    return-void
.end method

.method public setAutoClosePStmtStreams(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3711
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoClosePStmtStreams:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3712
    return-void
.end method

.method public setAutoDeserialize(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoDeserialize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2661
    return-void
.end method

.method public setAutoGenerateTestcaseScript(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2670
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScriptAsBoolean:Z

    .line 2671
    return-void
.end method

.method public setAutoReconnect(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2679
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2680
    return-void
.end method

.method public setAutoReconnectForConnectionPools(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2688
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2689
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPoolsAsBoolean:Z

    .line 2690
    return-void
.end method

.method public setAutoReconnectForPools(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2699
    return-void
.end method

.method public setAutoSlowLog(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4569
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoSlowLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4570
    return-void
.end method

.method public setBlobSendChunkSize(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobSendChunkSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->setValue(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 2708
    return-void
.end method

.method public setBlobsAreStrings(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4553
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobsAreStrings:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4554
    return-void
.end method

.method public setCacheCallableStatements(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheCallableStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2717
    return-void
.end method

.method public setCacheCallableStmts(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3950
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCacheCallableStatements(Z)V

    .line 3951
    return-void
.end method

.method public setCacheDefaultTimezone(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3675
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheDefaultTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3676
    return-void
.end method

.method public setCachePrepStmts(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3968
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCachePreparedStatements(Z)V

    .line 3969
    return-void
.end method

.method public setCachePreparedStatements(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cachePreparedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2726
    return-void
.end method

.method public setCacheResultSetMetadata(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2735
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetaDataAsBoolean:Z

    .line 2736
    return-void
.end method

.method public setCacheServerConfiguration(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheServerConfiguration:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2745
    return-void
.end method

.method public setCallableStatementCacheSize(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2753
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->callableStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 2754
    return-void
.end method

.method public setCallableStmtCacheSize(I)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3986
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCallableStatementCacheSize(I)V

    .line 3987
    return-void
.end method

.method public setCapitalizeDBMDTypes(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2763
    return-void
.end method

.method public setCapitalizeTypeNames(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2772
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2780
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 2781
    return-void
.end method

.method public setCharacterSetResults(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterSetResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 2790
    return-void
.end method

.method public setClientCertificateKeyStorePassword(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4085
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4086
    return-void
.end method

.method public setClientCertificateKeyStoreType(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4103
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4104
    return-void
.end method

.method public setClientCertificateKeyStoreUrl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4121
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4122
    return-void
.end method

.method public setClientInfoProvider(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4409
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientInfoProvider:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4410
    return-void
.end method

.method public setClobCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 2808
    return-void
.end method

.method public setClobberStreamingResults(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobberStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2799
    return-void
.end method

.method public setCompensateOnDuplicateKeyUpdateCounts(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4649
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->compensateOnDuplicateKeyUpdateCounts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4650
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 2826
    return-void
.end method

.method public setConnectionAttributes(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionAttributes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 1707
    return-void
.end method

.method public setConnectionCollation(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionCollation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 2817
    return-void
.end method

.method public setConnectionLifecycleInterceptors(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4577
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionLifecycleInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4578
    return-void
.end method

.method public setContinueBatchOnError(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->continueBatchOnError:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2835
    return-void
.end method

.method public setCreateDatabaseIfNotExist(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->createDatabaseIfNotExist:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2844
    return-void
.end method

.method public setDefaultAuthenticationPlugin(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4828
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultAuthenticationPlugin:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4829
    return-void
.end method

.method public setDefaultFetchSize(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultFetchSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 2853
    return-void
.end method

.method public setDetectCustomCollations(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4908
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectCustomCollations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4909
    return-void
.end method

.method public setDetectServerPreparedStmts(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2861
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2862
    return-void
.end method

.method public setDisabledAuthenticationPlugins(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4820
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disabledAuthenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4821
    return-void
.end method

.method public setDisconnectOnExpiredPasswords(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4852
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disconnectOnExpiredPasswords:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4853
    return-void
.end method

.method public setDontCheckOnDuplicateKeyUpdateInSQL(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4941
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontCheckOnDuplicateKeyUpdateInSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4942
    return-void
.end method

.method public setDontTrackOpenResources(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontTrackOpenResources:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2871
    return-void
.end method

.method public setDumpMetadataOnColumnNotFound(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3765
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpMetadataOnColumnNotFound:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3766
    return-void
.end method

.method public setDumpQueriesOnException(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpQueriesOnException:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2880
    return-void
.end method

.method public setDynamicCalendars(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2888
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dynamicCalendars:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2889
    return-void
.end method

.method public setElideSetAutoCommits(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->elideSetAutoCommits:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2898
    return-void
.end method

.method public setEmptyStringsConvertToZero(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emptyStringsConvertToZero:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2907
    return-void
.end method

.method public setEmulateLocators(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateLocators:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2916
    return-void
.end method

.method public setEmulateUnsupportedPstmts(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateUnsupportedPstmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2925
    return-void
.end method

.method public setEnableEscapeProcessing(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4993
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableEscapeProcessing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4994
    return-void
.end method

.method public setEnablePacketDebug(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enablePacketDebug:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2934
    return-void
.end method

.method public setEnableQueryTimeouts(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4355
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableQueryTimeouts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4356
    return-void
.end method

.method public setEnabledSSLCipherSuites(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4977
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledSSLCipherSuites:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4978
    return-void
.end method

.method public setEnabledTLSProtocols(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4985
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledTLSProtocols:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4986
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 2943
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingAsString:Ljava/lang/String;

    .line 2944
    return-void
.end method

.method public setExceptionInterceptors(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4700
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->exceptionInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4701
    return-void
.end method

.method public setExplainSlowQueries(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->explainSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2953
    return-void
.end method

.method public setFailOverReadOnly(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2961
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->failOverReadOnly:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2962
    return-void
.end method

.method public setFunctionsNeverReturnBlobs(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4561
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->functionsNeverReturnBlobs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4562
    return-void
.end method

.method public setGatherPerfMetrics(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3869
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setGatherPerformanceMetrics(Z)V

    .line 3870
    return-void
.end method

.method public setGatherPerformanceMetrics(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->gatherPerformanceMetrics:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2971
    return-void
.end method

.method public setGenerateSimpleParameterMetadata(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4283
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->generateSimpleParameterMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4284
    return-void
.end method

.method public setGetProceduresReturnsFunctions(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4900
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getProceduresReturnsFunctions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4901
    return-void
.end method

.method protected setHighAvailability(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2974
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2975
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->highAvailabilityAsBoolean:Z

    .line 2976
    return-void
.end method

.method public setHoldResultsOpenOverStatementClose(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->holdResultsOpenOverStatementClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2985
    return-void
.end method

.method public setIgnoreNonTxTables(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->ignoreNonTxTables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2994
    return-void
.end method

.method public setIncludeInnodbStatusInDeadlockExceptions(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4545
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeInnodbStatusInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4546
    return-void
.end method

.method public setIncludeThreadDumpInDeadlockExceptions(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4796
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadDumpInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4797
    return-void
.end method

.method public setIncludeThreadNamesAsStatementComment(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4804
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadNamesAsStatementComment:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4805
    return-void
.end method

.method public setInitialTimeout(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initialTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3003
    return-void
.end method

.method public setInteractiveClient(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3905
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setIsInteractiveClient(Z)V

    .line 3906
    return-void
.end method

.method public setIsInteractiveClient(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3011
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3012
    return-void
.end method

.method public setJdbcCompliantTruncation(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3021
    return-void
.end method

.method public setJdbcCompliantTruncationForReads(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3819
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncationForReads:Z

    .line 3820
    return-void
.end method

.method public setLargeRowSizeThreshold(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4513
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->setValue(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4514
    return-void
.end method

.method public setLoadBalanceAutoCommitStatementRegex(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4788
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementRegex:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4789
    return-void
.end method

.method public setLoadBalanceAutoCommitStatementThreshold(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4780
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4781
    return-void
.end method

.method public setLoadBalanceBlacklistTimeout(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4657
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceBlacklistTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4658
    return-void
.end method

.method public setLoadBalanceConnectionGroup(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4736
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4737
    return-void
.end method

.method public setLoadBalanceEnableJMX(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4768
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4769
    return-void
.end method

.method public setLoadBalanceExceptionChecker(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4744
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceExceptionChecker:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4745
    return-void
.end method

.method public setLoadBalanceHostRemovalGracePeriod(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4772
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceHostRemovalGracePeriod:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4773
    return-void
.end method

.method public setLoadBalancePingTimeout(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4665
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalancePingTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4666
    return-void
.end method

.method public setLoadBalanceSQLExceptionSubclassFailover(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4760
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLExceptionSubclassFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4761
    return-void
.end method

.method public setLoadBalanceSQLStateFailover(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4752
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLStateFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4753
    return-void
.end method

.method public setLoadBalanceStrategy(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4425
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceStrategy:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4426
    return-void
.end method

.method public setLoadBalanceValidateConnectionOnSwapServer(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4728
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceValidateConnectionOnSwapServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4729
    return-void
.end method

.method public setLocalSocketAddress(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4247
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->localSocketAddress:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4248
    return-void
.end method

.method public setLocatorFetchBufferSize(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->locatorFetchBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->setValue(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3030
    return-void
.end method

.method public setLogSlowQueries(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3057
    return-void
.end method

.method public setLogXaCommands(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4301
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logXaCommands:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4302
    return-void
.end method

.method public setLogger(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3038
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValueAsObject(Ljava/lang/Object;)V

    .line 3039
    return-void
.end method

.method public setLoggerClassName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3047
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3048
    return-void
.end method

.method public setMaintainTimeStats(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3066
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStatsAsBoolean:Z

    .line 3067
    return-void
.end method

.method public setMaxAllowedPacket(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4708
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxAllowedPacket:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4709
    return-void
.end method

.method public setMaxQuerySizeToLog(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3075
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxQuerySizeToLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3076
    return-void
.end method

.method public setMaxReconnects(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxReconnects:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3085
    return-void
.end method

.method public setMaxRows(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3094
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRowsAsInt:I

    .line 3095
    return-void
.end method

.method public setMetadataCacheSize(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3103
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->metadataCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3104
    return-void
.end method

.method public setNetTimeoutForStreamingResults(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4337
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->netTimeoutForStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4338
    return-void
.end method

.method public setNoAccessToProcedureBodies(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4049
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noAccessToProcedureBodies:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4050
    return-void
.end method

.method public setNoDatetimeStringSync(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3112
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noDatetimeStringSync:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3113
    return-void
.end method

.method public setNoTimezoneConversionForDateType(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3657
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3658
    return-void
.end method

.method public setNoTimezoneConversionForTimeType(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3639
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForTimeType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3640
    return-void
.end method

.method public setNullCatalogMeansCurrent(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullCatalogMeansCurrent:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3122
    return-void
.end method

.method public setNullNamePatternMatchesAll(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullNamePatternMatchesAll:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3131
    return-void
.end method

.method public setOverrideSupportsIntegrityEnhancementFacility(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3621
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->overrideSupportsIntegrityEnhancementFacility:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3622
    return-void
.end method

.method public setPacketDebugBufferSize(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->packetDebugBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3140
    return-void
.end method

.method public setPadCharsWithSpace(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4373
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->padCharsWithSpace:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4374
    return-void
.end method

.method public setParanoid(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3148
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->paranoid:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3149
    return-void
.end method

.method public setParseInfoCacheFactory(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4836
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->parseInfoCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4837
    return-void
.end method

.method public setPasswordCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4685
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->passwordCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4686
    return-void
.end method

.method public setPedantic(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3157
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pedantic:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3158
    return-void
.end method

.method public setPinGlobalTxToPhysicalConnection(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3855
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pinGlobalTxToPhysicalConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3856
    return-void
.end method

.method public setPopulateInsertRowWithDefaultValues(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4417
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->populateInsertRowWithDefaultValues:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4418
    return-void
.end method

.method public setPrepStmtCacheSize(I)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4004
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPreparedStatementCacheSize(I)V

    .line 4005
    return-void
.end method

.method public setPrepStmtCacheSqlLimit(I)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4022
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPreparedStatementCacheSqlLimit(I)V

    .line 4023
    return-void
.end method

.method public setPreparedStatementCacheSize(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3166
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3167
    return-void
.end method

.method public setPreparedStatementCacheSqlLimit(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSqlLimit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3176
    return-void
.end method

.method public setProcessEscapeCodesForPrepStmts(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3729
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->processEscapeCodesForPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3730
    return-void
.end method

.method public setProfileSQL(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3194
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3195
    return-void
.end method

.method public setProfileSql(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3185
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQLAsBoolean:Z

    .line 3186
    return-void
.end method

.method public setProfilerEventHandler(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4585
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profilerEventHandler:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4586
    return-void
.end method

.method public setPropertiesTransform(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->propertiesTransform:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3204
    return-void
.end method

.method public setQueriesBeforeRetryMaster(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queriesBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3213
    return-void
.end method

.method public setQueryTimeoutKillsConnection(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4720
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queryTimeoutKillsConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4721
    return-void
.end method

.method public setReadFromMasterWhenNoSlaves(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4888
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readFromMasterWhenNoSlaves:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4889
    return-void
.end method

.method public setReadOnlyPropagatesToServer(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4969
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readOnlyPropagatesToServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4970
    return-void
.end method

.method public setReconnectAtTxEnd(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3221
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3222
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectTxAtEndAsBoolean:Z

    .line 3223
    return-void
.end method

.method public setRelaxAutoCommit(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3231
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->relaxAutoCommit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3232
    return-void
.end method

.method public setReplicationConnectionGroup(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4864
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4865
    return-void
.end method

.method public setReplicationEnableJMX(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4896
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4897
    return-void
.end method

.method public setReportMetricsIntervalMillis(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reportMetricsIntervalMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3241
    return-void
.end method

.method public setRequireSSL(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3249
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->requireSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3250
    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3783
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resourceId:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3784
    return-void
.end method

.method public setResultSetSizeThreshold(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4319
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resultSetSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4320
    return-void
.end method

.method public setRetainStatementAfterResultSetClose(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3258
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retainStatementAfterResultSetClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3259
    return-void
.end method

.method public setRetriesAllDown(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4669
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retriesAllDown:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4670
    return-void
.end method

.method public setRewriteBatchedStatements(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3801
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rewriteBatchedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3802
    return-void
.end method

.method public setRollbackOnPooledClose(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3267
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rollbackOnPooledClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3268
    return-void
.end method

.method public setRoundRobinLoadBalance(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->roundRobinLoadBalance:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3277
    return-void
.end method

.method public setRunningCTS13(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3285
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->runningCTS13:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3286
    return-void
.end method

.method public setSecondsBeforeRetryMaster(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3294
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->secondsBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3295
    return-void
.end method

.method public setSelfDestructOnPingMaxOperations(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4625
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingMaxOperations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4626
    return-void
.end method

.method public setSelfDestructOnPingSecondsLifetime(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4617
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingSecondsLifetime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4618
    return-void
.end method

.method public setSendFractionalSeconds(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4609
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sendFractionalSeconds:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4610
    return-void
.end method

.method public setServerAffinityOrder(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4433
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverAffinityOrder:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4434
    return-void
.end method

.method public setServerConfigCacheFactory(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4844
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverConfigCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4845
    return-void
.end method

.method public setServerRSAPublicKeyFile(Ljava/lang/String;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4920
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getUpdateCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4921
    const-string v0, "ConnectionProperties.dynamicChangeIsNotAllowed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "\'serverRSAPublicKeyFile\'"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4924
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4925
    return-void
.end method

.method public setServerTimezone(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3303
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3304
    return-void
.end method

.method public setSessionVariables(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sessionVariables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3313
    return-void
.end method

.method public setSlowQueryThresholdMillis(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3321
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3322
    return-void
.end method

.method public setSlowQueryThresholdNanos(J)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4489
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdNanos:Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->setValue(JLcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4490
    return-void
.end method

.method public setSocketFactory(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 3914
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setSocketFactoryClassName(Ljava/lang/String;)V

    .line 3915
    return-void
.end method

.method public setSocketFactoryClassName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3330
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketFactoryClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3331
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3339
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3340
    return-void
.end method

.method public setSocksProxyHost(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4949
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyHost:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4950
    return-void
.end method

.method public setSocksProxyPort(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4957
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyPort:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4958
    return-void
.end method

.method public setStatementInterceptors(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4497
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->statementInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4498
    return-void
.end method

.method public setStrictFloatingPoint(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3348
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictFloatingPoint:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3349
    return-void
.end method

.method public setStrictUpdates(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictUpdates:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3358
    return-void
.end method

.method public setTcpKeepAlive(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4449
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpKeepAlive:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4450
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4441
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpNoDelay:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4442
    return-void
.end method

.method public setTcpRcvBuf(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4457
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpRcvBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4458
    return-void
.end method

.method public setTcpSndBuf(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4465
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpSndBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4466
    return-void
.end method

.method public setTcpTrafficClass(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4473
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpTrafficClass:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4474
    return-void
.end method

.method public setTinyInt1isBit(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3366
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tinyInt1isBit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3367
    return-void
.end method

.method public setTraceProtocol(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3375
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3376
    return-void
.end method

.method public setTransformedBitIsBoolean(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->transformedBitIsBoolean:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3385
    return-void
.end method

.method public setTreatUtilDateAsTimestamp(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4211
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->treatUtilDateAsTimestamp:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4212
    return-void
.end method

.method public setTrustCertificateKeyStorePassword(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4139
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4140
    return-void
.end method

.method public setTrustCertificateKeyStoreType(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4157
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4158
    return-void
.end method

.method public setTrustCertificateKeyStoreUrl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4175
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4176
    return-void
.end method

.method public setUltraDevHack(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3887
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseUltraDevWorkAround(Z)V

    .line 3888
    return-void
.end method

.method public setUseAffectedRows(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4677
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useAffectedRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4678
    return-void
.end method

.method public setUseBlobToStoreUTF8OutsideBMP(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4521
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useBlobToStoreUTF8OutsideBMP:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4522
    return-void
.end method

.method public setUseColumnNamesInFindColumn(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4633
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useColumnNamesInFindColumn:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4634
    return-void
.end method

.method public setUseCompression(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3393
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCompression:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3394
    return-void
.end method

.method public setUseConfigs(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4256
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useConfigs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4257
    return-void
.end method

.method public setUseCursorFetch(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3603
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCursorFetch:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3604
    return-void
.end method

.method public setUseDirectRowUnpack(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4505
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDirectRowUnpack:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4506
    return-void
.end method

.method public setUseDynamicCharsetInfo(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4391
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDynamicCharsetInfo:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4392
    return-void
.end method

.method public setUseFastDateParsing(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4229
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastDateParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4230
    return-void
.end method

.method public setUseFastIntParsing(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3402
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastIntParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3403
    return-void
.end method

.method public setUseGmtMillisForDatetimes(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3747
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useGmtMillisForDatetimes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3748
    return-void
.end method

.method public setUseHostsInPrivileges(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3411
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useHostsInPrivileges:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3412
    return-void
.end method

.method public setUseInformationSchema(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useInformationSchema:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3421
    return-void
.end method

.method public setUseJDBCCompliantTimezoneShift(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3693
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJDBCCompliantTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3694
    return-void
.end method

.method public setUseJvmCharsetConverters(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3837
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJvmCharsetConverters:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3838
    return-void
.end method

.method public setUseLegacyDatetimeCode(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4601
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLegacyDatetimeCode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4602
    return-void
.end method

.method public setUseLocalSessionState(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3429
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalSessionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3430
    return-void
.end method

.method public setUseLocalTransactionState(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4641
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalTransactionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4642
    return-void
.end method

.method public setUseNanosForElapsedTime(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4481
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useNanosForElapsedTime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4482
    return-void
.end method

.method public setUseOldAliasMetadataBehavior(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4067
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldAliasMetadataBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4068
    return-void
.end method

.method public setUseOldUTF8Behavior(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3438
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3439
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8BehaviorAsBoolean:Z

    .line 3440
    return-void
.end method

.method public setUseOnlyServerErrorMessages(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3448
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOnlyServerErrorMessages:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3449
    return-void
.end method

.method public setUseReadAheadInput(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useReadAheadInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3458
    return-void
.end method

.method public setUseSSL(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3484
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3485
    return-void
.end method

.method public setUseSSPSCompatibleTimezoneShift(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4193
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSPSCompatibleTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4194
    return-void
.end method

.method public setUseServerPrepStmts(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3932
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseServerPreparedStmts(Z)V

    .line 3933
    return-void
.end method

.method public setUseServerPreparedStmts(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3466
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3467
    return-void
.end method

.method public setUseSqlStateCodes(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3475
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSqlStateCodes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3476
    return-void
.end method

.method public setUseStreamLengthsInPrepStmts(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3493
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useStreamLengthsInPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3494
    return-void
.end method

.method public setUseTimezone(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3502
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3503
    return-void
.end method

.method public setUseUltraDevWorkAround(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3511
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUltraDevWorkAround:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3512
    return-void
.end method

.method public setUseUnbufferedInput(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3520
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3521
    return-void
.end method

.method public setUseUnicode(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3529
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3530
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicodeAsBoolean:Z

    .line 3531
    return-void
.end method

.method public setUseUsageAdvisor(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3539
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3540
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisorAsBoolean:Z

    .line 3541
    return-void
.end method

.method public setUtf8OutsideBmpExcludedColumnNamePattern(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4529
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpExcludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4530
    return-void
.end method

.method public setUtf8OutsideBmpIncludedColumnNamePattern(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4537
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpIncludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4538
    return-void
.end method

.method public setVerifyServerCertificate(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4593
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->verifyServerCertificate:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4594
    return-void
.end method

.method public setYearIsDateType(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3549
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->yearIsDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3550
    return-void
.end method

.method public setZeroDateTimeBehavior(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3558
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->zeroDateTimeBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3559
    return-void
.end method

.method protected storeToRef(Ljavax/naming/Reference;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3562
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3564
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 3565
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 3568
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 3570
    if-eqz p1, :cond_0

    .line 3571
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->storeTo(Ljavax/naming/Reference;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3564
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3573
    :catch_0
    move-exception v0

    .line 3574
    const-string v0, "ConnectionProperties.errorNotExpected"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3577
    :cond_1
    return-void
.end method

.method public useUnbufferedInput()Z
    .locals 1

    .prologue
    .line 3585
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method
