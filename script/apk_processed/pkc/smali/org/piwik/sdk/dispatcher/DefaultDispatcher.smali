.class public Lorg/piwik/sdk/dispatcher/DefaultDispatcher;
.super Ljava/lang/Object;
.source "DefaultDispatcher.java"

# interfaces
.implements Lorg/piwik/sdk/dispatcher/Dispatcher;


# instance fields
.field private final mConnectivity:Lorg/piwik/sdk/tools/Connectivity;

.field private mDispatchGzipped:Z

.field private volatile mDispatchInterval:J

.field private mDispatchMode:Lorg/piwik/sdk/dispatcher/DispatchMode;

.field private mDryRunTarget:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/piwik/sdk/dispatcher/Packet;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventCache:Lorg/piwik/sdk/dispatcher/EventCache;

.field private final mLoop:Ljava/lang/Runnable;

.field private final mPacketFactory:Lorg/piwik/sdk/dispatcher/PacketFactory;

.field private final mPacketSender:Lorg/piwik/sdk/dispatcher/PacketSender;

.field private volatile mRetryCounter:I

.field private volatile mRunning:Z

.field private final mSleepToken:Ljava/util/concurrent/Semaphore;

.field private final mThreadControl:Ljava/lang/Object;

.field private volatile mTimeOut:I


# direct methods
.method public constructor <init>(Lorg/piwik/sdk/dispatcher/EventCache;Lorg/piwik/sdk/tools/Connectivity;Lorg/piwik/sdk/dispatcher/PacketFactory;Lorg/piwik/sdk/dispatcher/PacketSender;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mThreadControl:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mSleepToken:Ljava/util/concurrent/Semaphore;

    const/16 v0, 0x1388

    .line 32
    iput v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mTimeOut:I

    const-wide/32 v2, 0x1d4c0

    .line 33
    iput-wide v2, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mDispatchInterval:J

    .line 34
    iput v1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mRetryCounter:I

    .line 36
    iput-boolean v1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mDispatchGzipped:Z

    .line 37
    sget-object v0, Lorg/piwik/sdk/dispatcher/DispatchMode;->ALWAYS:Lorg/piwik/sdk/dispatcher/DispatchMode;

    iput-object v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mDispatchMode:Lorg/piwik/sdk/dispatcher/DispatchMode;

    .line 38
    iput-boolean v1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mRunning:Z

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mDryRunTarget:Ljava/util/List;

    .line 155
    new-instance v0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;

    invoke-direct {v0, p0}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;-><init>(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)V

    iput-object v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mLoop:Ljava/lang/Runnable;

    .line 42
    iput-object p2, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mConnectivity:Lorg/piwik/sdk/tools/Connectivity;

    .line 43
    iput-object p1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mEventCache:Lorg/piwik/sdk/dispatcher/EventCache;

    .line 44
    iput-object p3, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mPacketFactory:Lorg/piwik/sdk/dispatcher/PacketFactory;

    .line 45
    iput-object p4, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mPacketSender:Lorg/piwik/sdk/dispatcher/PacketSender;

    .line 46
    iget-boolean p1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mDispatchGzipped:Z

    invoke-interface {p4, p1}, Lorg/piwik/sdk/dispatcher/PacketSender;->setGzipData(Z)V

    .line 47
    iget p1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mTimeOut:I

    int-to-long p1, p1

    invoke-interface {p4, p1, p2}, Lorg/piwik/sdk/dispatcher/PacketSender;->setTimeout(J)V

    return-void
.end method

.method static synthetic access$000(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)I
    .locals 0

    .line 24
    iget p0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mRetryCounter:I

    return p0
.end method

.method static synthetic access$002(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;I)I
    .locals 0

    .line 24
    iput p1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mRetryCounter:I

    return p1
.end method

.method static synthetic access$008(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)I
    .locals 2

    .line 24
    iget v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mRetryCounter:I

    return v0
.end method

.method static synthetic access$100(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mRunning:Z

    return p0
.end method

.method static synthetic access$102(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mRunning:Z

    return p1
.end method

.method static synthetic access$200(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mDispatchInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mSleepToken:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$400(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Z
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->isConnected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Lorg/piwik/sdk/dispatcher/EventCache;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mEventCache:Lorg/piwik/sdk/dispatcher/EventCache;

    return-object p0
.end method

.method static synthetic access$600(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Lorg/piwik/sdk/dispatcher/PacketFactory;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mPacketFactory:Lorg/piwik/sdk/dispatcher/PacketFactory;

    return-object p0
.end method

.method static synthetic access$700(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mDryRunTarget:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Lorg/piwik/sdk/dispatcher/PacketSender;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mPacketSender:Lorg/piwik/sdk/dispatcher/PacketSender;

    return-object p0
.end method

.method static synthetic access$900(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Ljava/lang/Object;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mThreadControl:Ljava/lang/Object;

    return-object p0
.end method

.method private isConnected()Z
    .locals 4

    .line 207
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mConnectivity:Lorg/piwik/sdk/tools/Connectivity;

    invoke-virtual {v0}, Lorg/piwik/sdk/tools/Connectivity;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 209
    :cond_0
    sget-object v0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$2;->$SwitchMap$org$piwik$sdk$dispatcher$DispatchMode:[I

    iget-object v2, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mDispatchMode:Lorg/piwik/sdk/dispatcher/DispatchMode;

    invoke-virtual {v2}, Lorg/piwik/sdk/dispatcher/DispatchMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 213
    :pswitch_0
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mConnectivity:Lorg/piwik/sdk/tools/Connectivity;

    invoke-virtual {v0}, Lorg/piwik/sdk/tools/Connectivity;->getType()Lorg/piwik/sdk/tools/Connectivity$Type;

    move-result-object v0

    sget-object v3, Lorg/piwik/sdk/tools/Connectivity$Type;->WIFI:Lorg/piwik/sdk/tools/Connectivity$Type;

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :pswitch_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private launch()Z
    .locals 4

    .line 116
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mThreadControl:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-boolean v1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mRunning:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 118
    iput-boolean v1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mRunning:Z

    .line 119
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mLoop:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 121
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 122
    monitor-exit v0

    return v1

    .line 124
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mEventCache:Lorg/piwik/sdk/dispatcher/EventCache;

    invoke-virtual {v0}, Lorg/piwik/sdk/dispatcher/EventCache;->clear()V

    .line 146
    iget-boolean v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->forceDispatch()Z

    :cond_0
    return-void
.end method

.method public forceDispatch()Z
    .locals 2

    .line 134
    invoke-direct {p0}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->launch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mRetryCounter:I

    .line 136
    iget-object v1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mSleepToken:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setDispatchInterval(J)V
    .locals 3

    .line 79
    iput-wide p1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mDispatchInterval:J

    .line 80
    iget-wide p1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mDispatchInterval:J

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->launch()Z

    :cond_0
    return-void
.end method

.method public submit(Lorg/piwik/sdk/TrackMe;)V
    .locals 4

    .line 151
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mEventCache:Lorg/piwik/sdk/dispatcher/EventCache;

    new-instance v1, Lorg/piwik/sdk/dispatcher/Event;

    invoke-virtual {p1}, Lorg/piwik/sdk/TrackMe;->toMap()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/piwik/sdk/dispatcher/Event;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/piwik/sdk/dispatcher/EventCache;->add(Lorg/piwik/sdk/dispatcher/Event;)V

    .line 152
    iget-wide v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->mDispatchInterval:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->launch()Z

    :cond_0
    return-void
.end method
