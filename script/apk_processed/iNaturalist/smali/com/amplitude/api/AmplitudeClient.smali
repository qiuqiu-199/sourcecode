.class public Lcom/amplitude/api/AmplitudeClient;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"


# static fields
.field public static final DEVICE_ID_KEY:Ljava/lang/String; = "device_id"

.field public static final END_SESSION_EVENT:Ljava/lang/String; = "session_end"

.field public static final LAST_EVENT_ID_KEY:Ljava/lang/String; = "last_event_id"

.field public static final LAST_EVENT_TIME_KEY:Ljava/lang/String; = "last_event_time"

.field public static final LAST_IDENTIFY_ID_KEY:Ljava/lang/String; = "last_identify_id"

.field public static final OPT_OUT_KEY:Ljava/lang/String; = "opt_out"

.field public static final PREVIOUS_SESSION_ID_KEY:Ljava/lang/String; = "previous_session_id"

.field public static final SEQUENCE_NUMBER_KEY:Ljava/lang/String; = "sequence_number"

.field public static final START_SESSION_EVENT:Ljava/lang/String; = "session_start"

.field public static final TAG:Ljava/lang/String; = "com.amplitude.api.AmplitudeClient"

.field public static final USER_ID_KEY:Ljava/lang/String; = "user_id"

.field protected static instance:Lcom/amplitude/api/AmplitudeClient;

.field private static final logger:Lcom/amplitude/api/AmplitudeLog;


# instance fields
.field protected apiKey:Ljava/lang/String;

.field private backoffUpload:Z

.field private backoffUploadBatchSize:I

.field protected context:Landroid/content/Context;

.field protected dbHelper:Lcom/amplitude/api/DatabaseHelper;

.field protected deviceId:Ljava/lang/String;

.field private deviceInfo:Lcom/amplitude/api/DeviceInfo;

.field private eventMaxCount:I

.field private eventUploadMaxBatchSize:I

.field private eventUploadPeriodMillis:J

.field private eventUploadThreshold:I

.field private flushEventsOnClose:Z

.field protected httpClient:Lokhttp3/OkHttpClient;

.field httpThread:Lcom/amplitude/api/WorkerThread;

.field private inForeground:Z

.field protected initialized:Z

.field lastError:Ljava/lang/Throwable;

.field lastEventId:J

.field lastEventTime:J

.field lastIdentifyId:J

.field logThread:Lcom/amplitude/api/WorkerThread;

.field private minTimeBetweenSessionsMillis:J

.field private newDeviceIdPerInstall:Z

.field private offline:Z

.field private optOut:Z

.field previousSessionId:J

.field sequenceNumber:J

.field sessionId:J

.field private sessionTimeoutMillis:J

.field private trackingSessionEvents:Z

.field private updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

.field url:Ljava/lang/String;

.field private useAdvertisingIdForDeviceId:Z

.field protected userId:Ljava/lang/String;

.field private usingForegroundTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/amplitude/api/AmplitudeClient;

    invoke-direct {v0}, Lcom/amplitude/api/AmplitudeClient;-><init>()V

    sput-object v0, Lcom/amplitude/api/AmplitudeClient;->instance:Lcom/amplitude/api/AmplitudeClient;

    .line 104
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->newDeviceIdPerInstall:Z

    .line 131
    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->useAdvertisingIdForDeviceId:Z

    .line 132
    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->initialized:Z

    .line 133
    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    .line 134
    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->offline:Z

    const-wide/16 v1, -0x1

    .line 139
    iput-wide v1, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    const-wide/16 v3, 0x0

    .line 140
    iput-wide v3, p0, Lcom/amplitude/api/AmplitudeClient;->sequenceNumber:J

    .line 141
    iput-wide v1, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventId:J

    .line 142
    iput-wide v1, p0, Lcom/amplitude/api/AmplitudeClient;->lastIdentifyId:J

    .line 143
    iput-wide v1, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventTime:J

    .line 144
    iput-wide v1, p0, Lcom/amplitude/api/AmplitudeClient;->previousSessionId:J

    const/16 v1, 0x1e

    .line 151
    iput v1, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    const/16 v1, 0x64

    .line 152
    iput v1, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadMaxBatchSize:I

    const/16 v1, 0x3e8

    .line 153
    iput v1, p0, Lcom/amplitude/api/AmplitudeClient;->eventMaxCount:I

    const-wide/16 v1, 0x7530

    .line 154
    iput-wide v1, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadPeriodMillis:J

    const-wide/32 v1, 0x493e0

    .line 155
    iput-wide v1, p0, Lcom/amplitude/api/AmplitudeClient;->minTimeBetweenSessionsMillis:J

    const-wide/32 v1, 0x1b7740

    .line 156
    iput-wide v1, p0, Lcom/amplitude/api/AmplitudeClient;->sessionTimeoutMillis:J

    .line 157
    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUpload:Z

    .line 158
    iget v1, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadMaxBatchSize:I

    iput v1, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    .line 159
    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->usingForegroundTracking:Z

    .line 160
    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->trackingSessionEvents:Z

    .line 161
    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->inForeground:Z

    const/4 v1, 0x1

    .line 162
    iput-boolean v1, p0, Lcom/amplitude/api/AmplitudeClient;->flushEventsOnClose:Z

    .line 164
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 168
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "https://api.amplitude.com/"

    .line 177
    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->url:Ljava/lang/String;

    .line 181
    new-instance v0, Lcom/amplitude/api/WorkerThread;

    const-string v1, "logThread"

    invoke-direct {v0, v1}, Lcom/amplitude/api/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    .line 185
    new-instance v0, Lcom/amplitude/api/WorkerThread;

    const-string v1, "httpThread"

    invoke-direct {v0, v1}, Lcom/amplitude/api/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->httpThread:Lcom/amplitude/api/WorkerThread;

    .line 191
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    invoke-virtual {v0}, Lcom/amplitude/api/WorkerThread;->start()V

    .line 192
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->httpThread:Lcom/amplitude/api/WorkerThread;

    invoke-virtual {v0}, Lcom/amplitude/api/WorkerThread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/amplitude/api/AmplitudeClient;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->initializeDeviceInfo()V

    return-void
.end method

.method static synthetic access$1002(Lcom/amplitude/api/AmplitudeClient;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    return p1
.end method

.method static synthetic access$102(Lcom/amplitude/api/AmplitudeClient;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/amplitude/api/AmplitudeClient;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadMaxBatchSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;J)J
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/amplitude/api/AmplitudeClient;->getLongvalue(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300()Lcom/amplitude/api/AmplitudeLog;
    .locals 1

    .line 40
    sget-object v0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amplitude/api/AmplitudeClient;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->inForeground:Z

    return p1
.end method

.method static synthetic access$600(Lcom/amplitude/api/AmplitudeClient;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/amplitude/api/AmplitudeClient;->flushEventsOnClose:Z

    return p0
.end method

.method static synthetic access$700(Lcom/amplitude/api/AmplitudeClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amplitude/api/AmplitudeClient;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amplitude/api/AmplitudeClient;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    return p0
.end method

.method static synthetic access$900(Lcom/amplitude/api/AmplitudeClient;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUpload:Z

    return p0
.end method

.method static synthetic access$902(Lcom/amplitude/api/AmplitudeClient;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUpload:Z

    return p1
.end method

.method public static getInstance()Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    .line 101
    sget-object v0, Lcom/amplitude/api/AmplitudeClient;->instance:Lcom/amplitude/api/AmplitudeClient;

    return-object v0
.end method

.method private getInvalidDeviceIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1879
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, ""

    .line 1880
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "9774d56d682e549c"

    .line 1881
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "unknown"

    .line 1882
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "000000000000000"

    .line 1883
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Android"

    .line 1884
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "DEFACE"

    .line 1885
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "00000000-0000-0000-0000-000000000000"

    .line 1886
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getLongvalue(Ljava/lang/String;J)J
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/amplitude/api/DatabaseHelper;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 991
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method private inSession()Z
    .locals 5

    .line 1104
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initializeDeviceId()Ljava/lang/String;
    .locals 3

    .line 1892
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->getInvalidDeviceIds()Ljava/util/Set;

    move-result-object v0

    .line 1895
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v2, "device_id"

    invoke-virtual {v1, v2}, Lcom/amplitude/api/DatabaseHelper;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1896
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 1900
    :cond_0
    iget-boolean v1, p0, Lcom/amplitude/api/AmplitudeClient;->newDeviceIdPerInstall:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/amplitude/api/AmplitudeClient;->useAdvertisingIdForDeviceId:Z

    if-eqz v1, :cond_1

    .line 1904
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    .line 1905
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1906
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyValue(Ljava/lang/String;Ljava/lang/String;)J

    return-object v1

    .line 1913
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-static {}, Lcom/amplitude/api/DeviceInfo;->generateUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1914
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v2, "device_id"

    invoke-virtual {v1, v2, v0}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyValue(Ljava/lang/String;Ljava/lang/String;)J

    return-object v0
.end method

.method private initializeDeviceInfo()V
    .locals 2

    .line 304
    new-instance v0, Lcom/amplitude/api/DeviceInfo;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amplitude/api/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    .line 305
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->initializeDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceId:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v0}, Lcom/amplitude/api/DeviceInfo;->prefetch()V

    return-void
.end method

.method private isWithinMinTimeBetweenSessions(J)Z
    .locals 4

    .line 1108
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->usingForegroundTracking:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->minTimeBetweenSessionsMillis:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionTimeoutMillis:J

    .line 1110
    :goto_0
    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventTime:J

    sub-long/2addr p1, v2

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private static migrateBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V
    .locals 2

    .line 2164
    invoke-virtual {p3, p4}, Lcom/amplitude/api/DatabaseHelper;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2168
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 2169
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    .line 2170
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static migrateLongValue(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V
    .locals 1

    .line 2142
    invoke-virtual {p4, p5}, Lcom/amplitude/api/DatabaseHelper;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2146
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 2147
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    .line 2148
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static migrateStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V
    .locals 1

    .line 2152
    invoke-virtual {p3, p4}, Lcom/amplitude/api/DatabaseHelper;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2156
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2158
    invoke-virtual {p3, p4, p2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyValue(Ljava/lang/String;Ljava/lang/String;)J

    .line 2159
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private sendSessionEvent(Ljava/lang/String;)V
    .locals 10

    const-string v0, "sendSessionEvent(\'%s\')"

    const/4 v1, 0x1

    .line 1132
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1136
    :cond_0
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->inSession()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1140
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "special"

    .line 1142
    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1147
    iget-wide v7, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventTime:J

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    return-void

    :catch_0
    return-void
.end method

.method private setSessionId(J)V
    .locals 0

    .line 1114
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    .line 1115
    invoke-virtual {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->setPreviousSessionId(J)V

    return-void
.end method

.method private startNewSession(J)V
    .locals 1

    .line 1091
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->trackingSessionEvents:Z

    if-eqz v0, :cond_0

    const-string v0, "session_end"

    .line 1092
    invoke-direct {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->sendSessionEvent(Ljava/lang/String;)V

    .line 1096
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->setSessionId(J)V

    .line 1097
    invoke-virtual {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->refreshSessionTime(J)V

    .line 1098
    iget-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->trackingSessionEvents:Z

    if-eqz p1, :cond_1

    const-string p1, "session_start"

    .line 1099
    invoke-direct {p0, p1}, Lcom/amplitude/api/AmplitudeClient;->sendSessionEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateServerLater(J)V
    .locals 2

    .line 1598
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v1, Lcom/amplitude/api/AmplitudeClient$13;

    invoke-direct {v1, p0}, Lcom/amplitude/api/AmplitudeClient$13;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/amplitude/api/WorkerThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static upgradePrefs(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1994
    invoke-static {p0, v0, v0}, Lcom/amplitude/api/AmplitudeClient;->upgradePrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static upgradePrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "com.amplitude.api"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2011
    :try_start_1
    const-class v1, Lcom/amplitude/api/Constants;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-exception p0

    goto/16 :goto_1

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    :try_start_2
    const-string p2, "com.amplitude.api"

    .line 2020
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 2025
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2027
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2030
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_3

    return v0

    .line 2034
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2036
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2037
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2040
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".previousSessionId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "com.amplitude.api.previousSessionId"

    .line 2041
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".previousSessionId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    .line 2042
    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2041
    invoke-interface {p0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2044
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".deviceId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    const-string v3, "com.amplitude.api.deviceId"

    .line 2045
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".deviceId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2046
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2045
    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2048
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".userId"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "com.amplitude.api.userId"

    .line 2049
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".userId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2050
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2049
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2052
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".optOut"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "com.amplitude.api.optOut"

    .line 2053
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".optOut"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2054
    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 2053
    invoke-interface {p0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2058
    :cond_7
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2059
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2061
    sget-object p0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p1, "com.amplitude.api.AmplitudeClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgraded shared preferences from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amplitude/api/AmplitudeLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 p0, 0x1

    return p0

    .line 2065
    :goto_1
    sget-object p1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p2, "com.amplitude.api.AmplitudeClient"

    const-string v1, "Error upgrading shared preferences"

    invoke-virtual {p1, p2, v1, p0}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static upgradeSharedPrefsToDB(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2081
    invoke-static {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->upgradeSharedPrefsToDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static upgradeSharedPrefsToDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    if-nez p1, :cond_0

    const-string p1, "com.amplitude.api"

    .line 2097
    :cond_0
    invoke-static {p0}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/amplitude/api/DatabaseHelper;

    move-result-object v6

    const-string v0, "device_id"

    .line 2098
    invoke-virtual {v6, v0}, Lcom/amplitude/api/DatabaseHelper;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "previous_session_id"

    .line 2099
    invoke-virtual {v6, v1}, Lcom/amplitude/api/DatabaseHelper;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_event_time"

    .line 2100
    invoke-virtual {v6, v2}, Lcom/amplitude/api/DatabaseHelper;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 2101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    return v7

    .line 2105
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v8, 0x0

    .line 2107
    invoke-virtual {p0, p1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "com.amplitude.api.deviceId"

    const-string v0, "device_id"

    const/4 v9, 0x0

    .line 2109
    invoke-static {p0, p1, v9, v6, v0}, Lcom/amplitude/api/AmplitudeClient;->migrateStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    const-string v1, "com.amplitude.api.lastEventTime"

    const-wide/16 v2, -0x1

    const-string v5, "last_event_time"

    move-object v0, p0

    move-object v4, v6

    .line 2113
    invoke-static/range {v0 .. v5}, Lcom/amplitude/api/AmplitudeClient;->migrateLongValue(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    const-string v1, "com.amplitude.api.lastEventId"

    const-string v5, "last_event_id"

    .line 2117
    invoke-static/range {v0 .. v5}, Lcom/amplitude/api/AmplitudeClient;->migrateLongValue(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    const-string v1, "com.amplitude.api.lastIdentifyId"

    const-string v5, "last_identify_id"

    .line 2121
    invoke-static/range {v0 .. v5}, Lcom/amplitude/api/AmplitudeClient;->migrateLongValue(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    const-string v1, "com.amplitude.api.previousSessionId"

    const-string v5, "previous_session_id"

    .line 2125
    invoke-static/range {v0 .. v5}, Lcom/amplitude/api/AmplitudeClient;->migrateLongValue(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    const-string p1, "com.amplitude.api.userId"

    const-string/jumbo v0, "user_id"

    .line 2130
    invoke-static {p0, p1, v9, v6, v0}, Lcom/amplitude/api/AmplitudeClient;->migrateStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    const-string p1, "com.amplitude.api.optOut"

    const-string v0, "opt_out"

    .line 2134
    invoke-static {p0, p1, v8, v6, v0}, Lcom/amplitude/api/AmplitudeClient;->migrateBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    return v7
.end method


# virtual methods
.method protected bytesToHexString([B)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x10

    .line 1964
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 1966
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 1968
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 1969
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    .line 1970
    aget-char v5, v0, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 1971
    aget-char v3, v0, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1973
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public clearUserProperties()V
    .locals 1

    .line 1343
    new-instance v0, Lcom/amplitude/api/Identify;

    invoke-direct {v0}, Lcom/amplitude/api/Identify;-><init>()V

    invoke-virtual {v0}, Lcom/amplitude/api/Identify;->clearAll()Lcom/amplitude/api/Identify;

    move-result-object v0

    .line 1344
    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->identify(Lcom/amplitude/api/Identify;)V

    return-void
.end method

.method protected declared-synchronized contextAndApiKeySet(Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    .line 1943
    :try_start_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1944
    sget-object v0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v2, "com.amplitude.api.AmplitudeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context cannot be null, set context with initialize() before calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1946
    monitor-exit p0

    return v1

    .line 1948
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1949
    sget-object v0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v2, "com.amplitude.api.AmplitudeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apiKey cannot be null or empty, set apiKey with initialize() before calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1952
    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x1

    .line 1954
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 1942
    monitor-exit p0

    throw p1
.end method

.method public disableLocationListening()Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    .line 359
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$3;

    invoke-direct {v0, p0}, Lcom/amplitude/api/AmplitudeClient$3;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public enableForegroundTracking(Landroid/app/Application;)Lcom/amplitude/api/AmplitudeClient;
    .locals 2

    .line 291
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->usingForegroundTracking:Z

    if-nez v0, :cond_2

    const-string v0, "enableForegroundTracking()"

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 296
    new-instance v0, Lcom/amplitude/api/AmplitudeCallbacks;

    invoke-direct {v0, p0}, Lcom/amplitude/api/AmplitudeCallbacks;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public enableLocationListening()Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    .line 339
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$2;

    invoke-direct {v0, p0}, Lcom/amplitude/api/AmplitudeClient$2;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public enableLogging(Z)Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    .line 490
    sget-object v0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    invoke-virtual {v0, p1}, Lcom/amplitude/api/AmplitudeLog;->setEnableLogging(Z)Lcom/amplitude/api/AmplitudeLog;

    return-object p0
.end method

.method public enableNewDeviceIdPerInstall(Z)Lcom/amplitude/api/AmplitudeClient;
    .locals 0

    .line 318
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->newDeviceIdPerInstall:Z

    return-object p0
.end method

.method protected getCurrentTimeMillis()J
    .locals 2

    .line 2178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1874
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method getNextSequenceNumber()J
    .locals 4

    .line 1000
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sequenceNumber:J

    .line 1001
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v1, "sequence_number"

    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->sequenceNumber:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    .line 1002
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sequenceNumber:J

    return-wide v0
.end method

.method public getSessionId()J
    .locals 2

    .line 1041
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1493
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public identify(Lcom/amplitude/api/Identify;)V
    .locals 1

    const/4 v0, 0x0

    .line 1357
    invoke-virtual {p0, p1, v0}, Lcom/amplitude/api/AmplitudeClient;->identify(Lcom/amplitude/api/Identify;Z)V

    return-void
.end method

.method public identify(Lcom/amplitude/api/Identify;Z)V
    .locals 10

    if-eqz p1, :cond_1

    .line 1372
    iget-object v0, p1, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    .line 1373
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "identify()"

    .line 1374
    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "$identify"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1376
    iget-object v5, p1, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    const/4 v6, 0x0

    .line 1378
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getCurrentTimeMillis()J

    move-result-wide v7

    move-object v1, p0

    move v9, p2

    .line 1376
    invoke-virtual/range {v1 .. v9}, Lcom/amplitude/api/AmplitudeClient;->logEventAsync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, p1, p2, v0}, Lcom/amplitude/api/AmplitudeClient;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 220
    :try_start_0
    sget-object p1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p2, "com.amplitude.api.AmplitudeClient"

    const-string p3, "Argument context cannot be null in initialize()"

    invoke-virtual {p1, p2, p3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 224
    :cond_0
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    sget-object p1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p2, "com.amplitude.api.AmplitudeClient"

    const-string p3, "Argument apiKey cannot be null or blank in initialize()"

    invoke-virtual {p1, p2, p3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    monitor-exit p0

    return-object p0

    .line 229
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    .line 230
    iput-object p2, p0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    .line 231
    iget-object p2, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/amplitude/api/DatabaseHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    .line 234
    new-instance p2, Lcom/amplitude/api/AmplitudeClient$1;

    invoke-direct {p2, p0, p1, p3, p0}, Lcom/amplitude/api/AmplitudeClient$1;-><init>(Lcom/amplitude/api/AmplitudeClient;Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {p0, p2}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    monitor-exit p0

    return-object p0

    .line 218
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method isInForeground()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->inForeground:Z

    return v0
.end method

.method public isOptedOut()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    return v0
.end method

.method isUsingForegroundTracking()Z
    .locals 1

    .line 561
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->usingForegroundTracking:Z

    return v0
.end method

.method protected logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J
    .locals 7

    .line 865
    sget-object v0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.AmplitudeClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logged event to Amplitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    .line 872
    :cond_0
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->trackingSessionEvents:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    const-string v0, "session_start"

    .line 873
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "session_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    if-nez p8, :cond_4

    .line 877
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->inForeground:Z

    if-nez v0, :cond_3

    .line 878
    invoke-virtual {p0, p6, p7}, Lcom/amplitude/api/AmplitudeClient;->startNewSessionIfNeeded(J)Z

    goto :goto_1

    .line 880
    :cond_3
    invoke-virtual {p0, p6, p7}, Lcom/amplitude/api/AmplitudeClient;->refreshSessionTime(J)V

    .line 885
    :cond_4
    :goto_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "event_type"

    .line 887
    invoke-virtual {p0, p1}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "timestamp"

    .line 888
    invoke-virtual {v0, v5, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo p6, "user_id"

    .line 889
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->userId:Ljava/lang/String;

    invoke-virtual {p0, p7}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "device_id"

    .line 890
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, p7}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "session_id"

    if-eqz p8, :cond_5

    move-wide p7, v1

    goto :goto_2

    .line 891
    :cond_5
    iget-wide p7, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    :goto_2
    invoke-virtual {v0, p6, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo p6, "version_name"

    .line 892
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p7}, Lcom/amplitude/api/DeviceInfo;->getVersionName()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p0, p7}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "os_name"

    .line 893
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p7}, Lcom/amplitude/api/DeviceInfo;->getOsName()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p0, p7}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "os_version"

    .line 894
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p7}, Lcom/amplitude/api/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p0, p7}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "device_brand"

    .line 895
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p7}, Lcom/amplitude/api/DeviceInfo;->getBrand()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p0, p7}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "device_manufacturer"

    .line 896
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p7}, Lcom/amplitude/api/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p0, p7}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "device_model"

    .line 897
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p7}, Lcom/amplitude/api/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p0, p7}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "carrier"

    .line 898
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p7}, Lcom/amplitude/api/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p0, p7}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "country"

    .line 899
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p7}, Lcom/amplitude/api/DeviceInfo;->getCountry()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p0, p7}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "language"

    .line 900
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p7}, Lcom/amplitude/api/DeviceInfo;->getLanguage()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p0, p7}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "platform"

    const-string p7, "Android"

    .line 901
    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p6, "uuid"

    .line 902
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p7

    invoke-virtual {p7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "sequence_number"

    .line 903
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getNextSequenceNumber()J

    move-result-wide p7

    invoke-virtual {v0, p6, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 905
    new-instance p6, Lorg/json/JSONObject;

    invoke-direct {p6}, Lorg/json/JSONObject;-><init>()V

    const-string p7, "name"

    const-string p8, "amplitude-android"

    .line 906
    invoke-virtual {p6, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p7, "version"

    const-string p8, "2.13.2"

    .line 907
    invoke-virtual {p6, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p7, "library"

    .line 908
    invoke-virtual {v0, p7, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p3, :cond_6

    .line 910
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 911
    :cond_6
    iget-object p6, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p6}, Lcom/amplitude/api/DeviceInfo;->getMostRecentLocation()Landroid/location/Location;

    move-result-object p6

    if-eqz p6, :cond_7

    .line 913
    new-instance p7, Lorg/json/JSONObject;

    invoke-direct {p7}, Lorg/json/JSONObject;-><init>()V

    const-string p8, "lat"

    .line 914
    invoke-virtual {p6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p7, p8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p8, "lng"

    .line 915
    invoke-virtual {p6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p7, p8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p6, "location"

    .line 916
    invoke-virtual {p3, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 918
    :cond_7
    iget-object p6, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p6}, Lcom/amplitude/api/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_8

    const-string p6, "androidADID"

    .line 919
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p7}, Lcom/amplitude/api/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p3, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    const-string p6, "limit_ad_tracking"

    .line 921
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p7}, Lcom/amplitude/api/DeviceInfo;->isLimitAdTrackingEnabled()Z

    move-result p7

    invoke-virtual {p3, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p6, "gps_enabled"

    .line 922
    iget-object p7, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {p7}, Lcom/amplitude/api/DeviceInfo;->isGooglePlayServicesEnabled()Z

    move-result p7

    invoke-virtual {p3, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p6, "api_properties"

    .line 924
    invoke-virtual {v0, p6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "event_properties"

    if-nez p2, :cond_9

    .line 925
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_3

    .line 926
    :cond_9
    invoke-virtual {p0, p2}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 925
    :goto_3
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p2, "user_properties"

    if-nez p4, :cond_a

    .line 927
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_4

    .line 928
    :cond_a
    invoke-virtual {p0, p4}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p3

    .line 927
    :goto_4
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "groups"

    if-nez p5, :cond_b

    .line 929
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_5

    :cond_b
    invoke-virtual {p0, p5}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p3

    :goto_5
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 931
    invoke-virtual {p0, p1, v0}, Lcom/amplitude/api/AmplitudeClient;->saveEvent(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p2

    .line 933
    sget-object p3, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p4, "com.amplitude.api.AmplitudeClient"

    const-string p5, "JSON Serialization of event type %s failed, skipping: %s"

    const/4 p6, 0x2

    new-array p6, p6, [Ljava/lang/Object;

    aput-object p1, p6, v4

    .line 934
    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p6, v3

    .line 933
    invoke-static {p5, p6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p2, v1

    :goto_6
    return-wide p2
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 577
    invoke-virtual {p0, p1, v0}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 590
    invoke-virtual {p0, p1, p2, v0}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 627
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V
    .locals 10

    .line 672
    invoke-virtual {p0, p1}, Lcom/amplitude/api/AmplitudeClient;->validateLogEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-wide v7, p4

    move/from16 v9, p6

    .line 673
    invoke-virtual/range {v1 .. v9}, Lcom/amplitude/api/AmplitudeClient;->logEventAsync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    :cond_0
    return-void
.end method

.method public logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 7

    .line 649
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getCurrentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 609
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method protected logEventAsync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V
    .locals 11

    if-eqz p2, :cond_0

    .line 822
    invoke-static {p2}, Lcom/amplitude/api/Utils;->cloneJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    if-eqz p4, :cond_1

    .line 826
    invoke-static {p4}, Lcom/amplitude/api/Utils;->cloneJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    if-eqz p5, :cond_2

    .line 830
    invoke-static/range {p5 .. p5}, Lcom/amplitude/api/Utils;->cloneJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object/from16 v6, p5

    .line 836
    :goto_2
    new-instance v10, Lcom/amplitude/api/AmplitudeClient$5;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/amplitude/api/AmplitudeClient$5;-><init>(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    move-object v0, p0

    invoke-virtual {p0, v10}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logEventSync(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 686
    invoke-virtual {p0, p1, v0}, Lcom/amplitude/api/AmplitudeClient;->logEventSync(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public logEventSync(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 699
    invoke-virtual {p0, p1, p2, v0}, Lcom/amplitude/api/AmplitudeClient;->logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 736
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amplitude/api/AmplitudeClient;->logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V
    .locals 10

    .line 781
    invoke-virtual {p0, p1}, Lcom/amplitude/api/AmplitudeClient;->validateLogEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-wide v7, p4

    move/from16 v9, p6

    .line 782
    invoke-virtual/range {v1 .. v9}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    :cond_0
    return-void
.end method

.method public logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 7

    .line 758
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getCurrentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/amplitude/api/AmplitudeClient;->logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    return-void
.end method

.method public logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 718
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amplitude/api/AmplitudeClient;->logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public logRevenue(D)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1200
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->logRevenue(Ljava/lang/String;ID)V

    return-void
.end method

.method public logRevenue(Ljava/lang/String;ID)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 1214
    invoke-virtual/range {v0 .. v6}, Lcom/amplitude/api/AmplitudeClient;->logRevenue(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logRevenue(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "logRevenue()"

    move-object v10, p0

    .line 1231
    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1236
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "special"

    const-string v1, "revenue_amount"

    .line 1238
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "productId"

    move-object v1, p1

    .line 1239
    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "quantity"

    move v1, p2

    .line 1240
    invoke-virtual {v4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "price"

    move-wide v1, p3

    .line 1241
    invoke-virtual {v4, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "receipt"

    move-object/from16 v1, p5

    .line 1242
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "receiptSig"

    move-object/from16 v1, p6

    .line 1243
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "revenue_amount"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1248
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getCurrentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v1, p0

    .line 1247
    invoke-virtual/range {v1 .. v9}, Lcom/amplitude/api/AmplitudeClient;->logEventAsync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    return-void
.end method

.method public logRevenueV2(Lcom/amplitude/api/Revenue;)V
    .locals 1

    const-string v0, "logRevenueV2()"

    .line 1262
    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amplitude/api/Revenue;->isValidRevenue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "revenue_amount"

    .line 1266
    invoke-virtual {p1}, Lcom/amplitude/api/Revenue;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected makeEventUploadPostRequest(Lokhttp3/OkHttpClient;Ljava/lang/String;JJ)V
    .locals 8

    const-string v0, "2"

    .line 1749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 1753
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1759
    new-instance v4, Lcom/amplitude/security/MD5;

    invoke-direct {v4}, Lcom/amplitude/security/MD5;-><init>()V

    const-string v5, "UTF-8"

    .line 1760
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/amplitude/api/AmplitudeClient;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1765
    sget-object v4, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v5, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :goto_0
    new-instance v3, Lokhttp3/FormBody$Builder;

    invoke-direct {v3}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string/jumbo v4, "v"

    .line 1769
    invoke-virtual {v3, v4, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v3, "client"

    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    .line 1770
    invoke-virtual {v0, v3, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v3, "e"

    .line 1771
    invoke-virtual {v0, v3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p2

    const-string/jumbo v0, "upload_time"

    .line 1772
    invoke-virtual {p2, v0, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p2

    const-string v0, "checksum"

    .line 1773
    invoke-virtual {p2, v0, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p2

    .line 1774
    invoke-virtual {p2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    .line 1776
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->url:Ljava/lang/String;

    .line 1777
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 1778
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 1779
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1784
    :try_start_1
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 1785
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    const-string v2, "success"

    .line 1786
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v2, :cond_0

    .line 1788
    :try_start_2
    iget-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance p2, Lcom/amplitude/api/AmplitudeClient$15;

    move-object v2, p2

    move-object v3, p0

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/amplitude/api/AmplitudeClient$15;-><init>(Lcom/amplitude/api/AmplitudeClient;JJ)V

    invoke-virtual {p1, p2}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception p1

    goto/16 :goto_2

    :catch_2
    move-exception p1

    goto/16 :goto_3

    :catch_3
    move-exception p1

    goto/16 :goto_4

    :catch_4
    move-exception p1

    goto/16 :goto_5

    :catch_5
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :try_start_3
    const-string v2, "invalid_api_key"

    .line 1808
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1809
    sget-object p1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p2, "com.amplitude.api.AmplitudeClient"

    const-string p3, "Invalid API key, make sure your API key is correct in initialize()"

    invoke-virtual {p1, p2, p3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    const-string v2, "bad_checksum"

    .line 1810
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1811
    sget-object p1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p2, "com.amplitude.api.AmplitudeClient"

    const-string p3, "Bad checksum, post request was mangled in transit, will attempt to reupload later"

    invoke-virtual {p1, p2, p3}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    const-string v2, "request_db_write_failed"

    .line 1813
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1814
    sget-object p1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p2, "com.amplitude.api.AmplitudeClient"

    const-string p3, "Couldn\'t write to request database on server, will attempt to reupload later"

    invoke-virtual {p1, p2, p3}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1816
    :cond_3
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v2, 0x19d

    if-ne p1, v2, :cond_6

    .line 1819
    iget-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUpload:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    if-ne p1, v1, :cond_5

    const-wide/16 p1, 0x0

    cmp-long v2, p3, p1

    if-ltz v2, :cond_4

    .line 1820
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v2, p3, p4}, Lcom/amplitude/api/DatabaseHelper;->removeEvent(J)V

    :cond_4
    cmp-long p3, p5, p1

    if-ltz p3, :cond_5

    .line 1821
    iget-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {p1, p5, p6}, Lcom/amplitude/api/DatabaseHelper;->removeIdentify(J)V

    .line 1826
    :cond_5
    iput-boolean v1, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUpload:Z

    .line 1827
    iget-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {p1}, Lcom/amplitude/api/DatabaseHelper;->getEventCount()J

    move-result-wide p1

    long-to-int p1, p1

    iget p2, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    int-to-double p1, p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    .line 1828
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, p3

    :try_start_4
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    .line 1829
    sget-object p1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p2, "com.amplitude.api.AmplitudeClient"

    const-string p3, "Request too large, will decrease size and attempt to reupload"

    invoke-virtual {p1, p2, p3}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance p2, Lcom/amplitude/api/AmplitudeClient$16;

    invoke-direct {p2, p0}, Lcom/amplitude/api/AmplitudeClient$16;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {p1, p2}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1838
    :cond_6
    sget-object p1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p3, "com.amplitude.api.AmplitudeClient"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Upload failed, "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", will attempt to reupload later"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_1
    const/4 v1, 0x0

    goto :goto_7

    :catch_6
    move-exception p1

    const/4 v1, 0x0

    .line 1858
    :goto_2
    sget-object p2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p3, "com.amplitude.api.AmplitudeClient"

    const-string p4, "Exception:"

    invoke-virtual {p2, p3, p4, p1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1859
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto :goto_7

    :catch_7
    move-exception p1

    const/4 v1, 0x0

    .line 1854
    :goto_3
    sget-object p2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p3, "com.amplitude.api.AmplitudeClient"

    const-string p4, "Exception:"

    invoke-virtual {p2, p3, p4, p1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1855
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto :goto_7

    :catch_8
    move-exception p1

    const/4 v1, 0x0

    .line 1850
    :goto_4
    sget-object p2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p3, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto :goto_7

    :catch_9
    move-exception p1

    const/4 v1, 0x0

    .line 1848
    :goto_5
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto :goto_7

    :catch_a
    move-exception p1

    const/4 v1, 0x0

    .line 1844
    :goto_6
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    :goto_7
    if-nez v1, :cond_7

    .line 1863
    iget-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_7
    return-void
.end method

.method protected mergeEventsAndIdentifys(Ljava/util/List;Ljava/util/List;J)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;J)",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1689
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v1, -0x1

    move-wide v3, v1

    .line 1693
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v5, p3

    if-gez v7, :cond_5

    .line 1694
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    .line 1695
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 1701
    sget-object p1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p2, "com.amplitude.api.AmplitudeClient"

    const-string v5, "mergeEventsAndIdentifys: number of events and identifys less than expected by %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1703
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr p3, v8

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v6, v7

    .line 1701
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_0
    if-eqz v6, :cond_1

    .line 1709
    invoke-interface {p1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "event_id"

    .line 1710
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1711
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    move-wide v1, v5

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 1715
    invoke-interface {p2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "event_id"

    .line 1716
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1717
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_2
    move-wide v3, v4

    goto :goto_0

    .line 1722
    :cond_2
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "sequence_number"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1723
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "sequence_number"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1724
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    const-string v9, "sequence_number"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-gez v10, :cond_3

    goto :goto_3

    .line 1729
    :cond_3
    invoke-interface {p2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "event_id"

    .line 1730
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1731
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 1725
    :cond_4
    :goto_3
    invoke-interface {p1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "event_id"

    .line 1726
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1727
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1736
    :cond_5
    :goto_4
    new-instance p1, Landroid/util/Pair;

    new-instance p2, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method onEnterForeground(J)V
    .locals 1

    .line 1177
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient$7;-><init>(Lcom/amplitude/api/AmplitudeClient;J)V

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method onExitForeground(J)V
    .locals 1

    .line 1156
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient$6;-><init>(Lcom/amplitude/api/AmplitudeClient;J)V

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method refreshSessionTime(J)V
    .locals 1

    .line 1124
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->inSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1128
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->setLastEventTime(J)V

    return-void
.end method

.method public regenerateDeviceId()Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    const-string v0, "regenerateDeviceId()"

    .line 1560
    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1565
    :cond_0
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$11;

    invoke-direct {v0, p0, p0}, Lcom/amplitude/api/AmplitudeClient$11;-><init>(Lcom/amplitude/api/AmplitudeClient;Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method protected replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 1933
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method protected runOnLogThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1919
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    if-eq v0, v1, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    invoke-virtual {v0, p1}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1922
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method protected saveEvent(Ljava/lang/String;Lorg/json/JSONObject;)J
    .locals 6

    .line 949
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 950
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 951
    sget-object p2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v0, "com.amplitude.api.AmplitudeClient"

    const-string v2, "Detected empty event string for event type %s, skipping"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    const-string v0, "$identify"

    .line 957
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v0, p2}, Lcom/amplitude/api/DatabaseHelper;->addIdentify(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->lastIdentifyId:J

    .line 959
    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->lastIdentifyId:J

    invoke-virtual {p0, v2, v3}, Lcom/amplitude/api/AmplitudeClient;->setLastIdentifyId(J)V

    goto :goto_0

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v0, p2}, Lcom/amplitude/api/DatabaseHelper;->addEvent(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventId:J

    .line 962
    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventId:J

    invoke-virtual {p0, v2, v3}, Lcom/amplitude/api/AmplitudeClient;->setLastEventId(J)V

    .line 965
    :goto_0
    iget p2, p0, Lcom/amplitude/api/AmplitudeClient;->eventMaxCount:I

    div-int/lit8 p2, p2, 0xa

    .line 966
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v0, 0x14

    .line 965
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 969
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v0}, Lcom/amplitude/api/DatabaseHelper;->getEventCount()J

    move-result-wide v0

    iget v2, p0, Lcom/amplitude/api/AmplitudeClient;->eventMaxCount:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 970
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/amplitude/api/DatabaseHelper;->getNthEventId(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/DatabaseHelper;->removeEvents(J)V

    .line 972
    :cond_2
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v0}, Lcom/amplitude/api/DatabaseHelper;->getIdentifyCount()J

    move-result-wide v0

    iget v2, p0, Lcom/amplitude/api/AmplitudeClient;->eventMaxCount:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 973
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/amplitude/api/DatabaseHelper;->getNthIdentifyId(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/DatabaseHelper;->removeIdentifys(J)V

    .line 976
    :cond_3
    iget-object p2, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {p2}, Lcom/amplitude/api/DatabaseHelper;->getTotalEventCount()J

    move-result-wide v0

    .line 977
    iget p2, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    int-to-long v2, p2

    rem-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    iget p2, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-ltz p2, :cond_4

    .line 979
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->updateServer()V

    goto :goto_1

    .line 981
    :cond_4
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadPeriodMillis:J

    invoke-direct {p0, v0, v1}, Lcom/amplitude/api/AmplitudeClient;->updateServerLater(J)V

    :goto_1
    const-string p2, "$identify"

    .line 984
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->lastIdentifyId:J

    goto :goto_2

    :cond_5
    iget-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventId:J

    :goto_2
    return-wide p1
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;
    .locals 2

    .line 1530
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->getInvalidDeviceIds()Ljava/util/Set;

    move-result-object v0

    const-string v1, "setDeviceId()"

    .line 1531
    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1532
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1537
    :cond_0
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$10;

    invoke-direct {v0, p0, p0, p1}, Lcom/amplitude/api/AmplitudeClient$10;-><init>(Lcom/amplitude/api/AmplitudeClient;Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    return-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setEventMaxCount(I)Lcom/amplitude/api/AmplitudeClient;
    .locals 0

    .line 408
    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->eventMaxCount:I

    return-object p0
.end method

.method public setEventUploadMaxBatchSize(I)Lcom/amplitude/api/AmplitudeClient;
    .locals 0

    .line 393
    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadMaxBatchSize:I

    .line 394
    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    return-object p0
.end method

.method public setEventUploadPeriodMillis(I)Lcom/amplitude/api/AmplitudeClient;
    .locals 2

    int-to-long v0, p1

    .line 421
    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadPeriodMillis:J

    return-object p0
.end method

.method public setEventUploadThreshold(I)Lcom/amplitude/api/AmplitudeClient;
    .locals 0

    .line 381
    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    return-object p0
.end method

.method public setFlushEventsOnClose(Z)Lcom/amplitude/api/AmplitudeClient;
    .locals 0

    .line 531
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->flushEventsOnClose:Z

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 13

    const-string v0, "setGroup()"

    .line 1391
    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1396
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1399
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v0

    .line 1401
    :goto_0
    new-instance v0, Lcom/amplitude/api/Identify;

    invoke-direct {v0}, Lcom/amplitude/api/Identify;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/amplitude/api/Identify;->setUserProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/amplitude/api/Identify;

    move-result-object p1

    const-string v5, "$identify"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1402
    iget-object v8, p1, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    .line 1403
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getCurrentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    move-object v4, p0

    .line 1402
    invoke-virtual/range {v4 .. v12}, Lcom/amplitude/api/AmplitudeClient;->logEventAsync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method setLastEventId(J)V
    .locals 2

    .line 1021
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventId:J

    .line 1022
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v1, "last_event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    return-void
.end method

.method setLastEventTime(J)V
    .locals 2

    .line 1011
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventTime:J

    .line 1012
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v1, "last_event_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    return-void
.end method

.method setLastIdentifyId(J)V
    .locals 2

    .line 1031
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->lastIdentifyId:J

    .line 1032
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v1, "last_identify_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    return-void
.end method

.method public setLogLevel(I)Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    .line 502
    sget-object v0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    invoke-virtual {v0, p1}, Lcom/amplitude/api/AmplitudeLog;->setLogLevel(I)Lcom/amplitude/api/AmplitudeLog;

    return-object p0
.end method

.method public setMinTimeBetweenSessionsMillis(J)Lcom/amplitude/api/AmplitudeClient;
    .locals 0

    .line 432
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->minTimeBetweenSessionsMillis:J

    return-object p0
.end method

.method public setOffline(Z)Lcom/amplitude/api/AmplitudeClient;
    .locals 0

    .line 514
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->offline:Z

    if-nez p1, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->uploadEvents()V

    :cond_0
    return-object p0
.end method

.method public setOptOut(Z)Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    const-string v0, "setOptOut()"

    .line 456
    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 461
    :cond_0
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$4;

    invoke-direct {v0, p0, p0, p1}, Lcom/amplitude/api/AmplitudeClient$4;-><init>(Lcom/amplitude/api/AmplitudeClient;Lcom/amplitude/api/AmplitudeClient;Z)V

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method setPreviousSessionId(J)V
    .locals 2

    .line 1050
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->previousSessionId:J

    .line 1051
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v1, "previous_session_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    return-void
.end method

.method public setSessionTimeoutMillis(J)Lcom/amplitude/api/AmplitudeClient;
    .locals 0

    .line 445
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->sessionTimeoutMillis:J

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    const-string v0, "setUserId()"

    .line 1503
    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1508
    :cond_0
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$9;

    invoke-direct {v0, p0, p0, p1}, Lcom/amplitude/api/AmplitudeClient$9;-><init>(Lcom/amplitude/api/AmplitudeClient;Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public setUserProperties(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1294
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "setUserProperties"

    .line 1295
    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1299
    :cond_0
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$8;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/api/AmplitudeClient$8;-><init>(Lcom/amplitude/api/AmplitudeClient;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setUserProperties(Lorg/json/JSONObject;Z)V
    .locals 0

    .line 1281
    invoke-virtual {p0, p1}, Lcom/amplitude/api/AmplitudeClient;->setUserProperties(Lorg/json/JSONObject;)V

    return-void
.end method

.method startNewSessionIfNeeded(J)Z
    .locals 7

    .line 1061
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->inSession()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1063
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->isWithinMinTimeBetweenSessions(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->refreshSessionTime(J)V

    return v1

    .line 1068
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->startNewSession(J)V

    return v2

    .line 1073
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->isWithinMinTimeBetweenSessions(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1074
    iget-wide v3, p0, Lcom/amplitude/api/AmplitudeClient;->previousSessionId:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 1075
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->startNewSession(J)V

    return v2

    .line 1080
    :cond_2
    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->previousSessionId:J

    invoke-direct {p0, v2, v3}, Lcom/amplitude/api/AmplitudeClient;->setSessionId(J)V

    .line 1081
    invoke-virtual {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->refreshSessionTime(J)V

    return v1

    .line 1085
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->startNewSession(J)V

    return v2
.end method

.method public trackSessionEvents(Z)Lcom/amplitude/api/AmplitudeClient;
    .locals 0

    .line 545
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->trackingSessionEvents:Z

    return-object p0
.end method

.method public truncate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1482
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1483
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public truncate(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1459
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1462
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1463
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1464
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1465
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->truncate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1466
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1467
    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1468
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1469
    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    if-nez p1, :cond_0

    .line 1416
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    .line 1419
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    .line 1420
    sget-object p1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v0, "com.amplitude.api.AmplitudeClient"

    const-string v1, "Warning: too many properties (more than 1000), ignoring"

    invoke-virtual {p1, v0, v1}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    .line 1424
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1425
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1426
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1429
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "$receipt"

    .line 1431
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "$receiptSig"

    .line 1432
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 1434
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1435
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->truncate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1436
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1437
    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1438
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/json/JSONArray;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1439
    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1433
    :cond_6
    :goto_1
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1442
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    return-object p1
.end method

.method protected updateServer()V
    .locals 1

    const/4 v0, 0x0

    .line 1615
    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->updateServer(Z)V

    return-void
.end method

.method protected updateServer(Z)V
    .locals 10

    .line 1625
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->offline:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1631
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v0}, Lcom/amplitude/api/DatabaseHelper;->getTotalEventCount()J

    move-result-wide v2

    if-eqz p1, :cond_1

    .line 1632
    iget p1, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    :goto_0
    int-to-long v4, p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadMaxBatchSize:I

    goto :goto_0

    :goto_1
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 1638
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 1643
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    iget-wide v4, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventId:J

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/amplitude/api/DatabaseHelper;->getEvents(JJ)Ljava/util/List;

    move-result-object v0

    .line 1644
    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    iget-wide v5, p0, Lcom/amplitude/api/AmplitudeClient;->lastIdentifyId:J

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/amplitude/api/DatabaseHelper;->getIdentifys(JJ)Ljava/util/List;

    move-result-object v4

    .line 1646
    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/amplitude/api/AmplitudeClient;->mergeEventsAndIdentifys(Ljava/util/List;Ljava/util/List;J)Landroid/util/Pair;

    move-result-object v0

    .line 1648
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONArray;

    .line 1649
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1650
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 1653
    :cond_3
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1654
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1655
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1657
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->httpThread:Lcom/amplitude/api/WorkerThread;

    new-instance v2, Lcom/amplitude/api/AmplitudeClient$14;

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/amplitude/api/AmplitudeClient$14;-><init>(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amplitude/api/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1669
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1670
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Caught Cursor window exception during event upload, deferring upload: %s"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1672
    invoke-virtual {v0}, Lcom/amplitude/api/CursorWindowAllocationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    .line 1670
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1664
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1665
    sget-object p1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method public uploadEvents()V
    .locals 2

    const-string/jumbo v0, "uploadEvents()"

    .line 1582
    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v1, Lcom/amplitude/api/AmplitudeClient$12;

    invoke-direct {v1, p0}, Lcom/amplitude/api/AmplitudeClient$12;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {v0, v1}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public useAdvertisingIdForDeviceId()Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->useAdvertisingIdForDeviceId:Z

    return-object p0
.end method

.method useForegroundTracking()V
    .locals 1

    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->usingForegroundTracking:Z

    return-void
.end method

.method protected validateLogEvent(Ljava/lang/String;)Z
    .locals 2

    .line 794
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 795
    sget-object p1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v0, "com.amplitude.api.AmplitudeClient"

    const-string v1, "Argument eventType cannot be null or blank in logEvent()"

    invoke-virtual {p1, v0, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "logEvent()"

    .line 799
    invoke-virtual {p0, p1}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
