.class public Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;
.super Landroid/app/Service;
.source "CryptoInputParcelCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$CryptoInputParcelCacheServiceBinder;,
        Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$InputParcelNotFound;
    }
.end annotation


# static fields
.field public static final ACTION_ADD:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.ADD"

.field public static final ACTION_GET:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.GET"

.field public static final EXTRA_CRYPTO_INPUT_PARCEL:Ljava/lang/String; = "crypto_input_parcel"

.field public static final EXTRA_MESSENGER:Ljava/lang/String; = "messenger"

.field public static final EXTRA_UUID1:Ljava/lang/String; = "uuid1"

.field public static final EXTRA_UUID2:Ljava/lang/String; = "uuid2"

.field private static final MSG_GET_NOT_FOUND:I = 0x2

.field private static final MSG_GET_OKAY:I = 0x1

.field private static final NULL_UUID:Ljava/util/UUID;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/UUID;",
            "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 59
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->NULL_UUID:Ljava/util/UUID;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 44
    invoke-direct {v1}, Landroid/app/Service;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 252
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$CryptoInputParcelCacheServiceBinder;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$CryptoInputParcelCacheServiceBinder;-><init>(Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->mBinder:Landroid/os/IBinder;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static addCryptoInputParcel(Landroid/content/Context;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Ljava/util/UUID;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 100
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "org.sufficientlysecure.keychain.action.ADD"

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "crypto_input_parcel"

    .line 104
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "uuid1"

    .line 105
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "uuid2"

    .line 106
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 107
    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-object v0

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;--->addCryptoInputParcel(Landroid/content/Context;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Ljava/util/UUID;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static addCryptoInputParcel(Landroid/content/Context;Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 73
    invoke-static {v2, v4}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->addCryptoInputParcel(Landroid/content/Context;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Ljava/util/UUID;

    move-result-object v2

    .line 76
    const-class v4, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 79
    const-class v4, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v4, "call_uuid1"

    .line 80
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "call_uuid2"

    .line 81
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;--->addCryptoInputParcel(Landroid/content/Context;Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getCryptoInputParcel(Landroid/content/Context;Landroid/content/Intent;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 85
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "call_uuid1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "call_uuid2"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "call_uuid1"

    const-wide/16 v2, 0x0

    .line 89
    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "call_uuid2"

    .line 90
    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 91
    new-instance v7, Ljava/util/UUID;

    invoke-direct {v7, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 93
    :try_start_0
    invoke-static {v6, v7}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->getCryptoInputParcel(Landroid/content/Context;Ljava/util/UUID;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v6
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$InputParcelNotFound; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    return-object v1

    :cond_1
    :goto_0
    return-object v1

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;--->getCryptoInputParcel(Landroid/content/Context;Landroid/content/Intent;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getCryptoInputParcel(Landroid/content/Context;Ljava/util/UUID;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$InputParcelNotFound;
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.action.GET"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 118
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "getParcelableThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v4, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$1;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v4, v3, v2, v1}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$1;-><init>(Landroid/os/Looper;Landroid/os/Message;Ljava/lang/Object;)V

    .line 135
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v4, "uuid1"

    .line 136
    invoke-virtual {v8}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "uuid2"

    .line 137
    invoke-virtual {v8}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v8, "messenger"

    .line 138
    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    invoke-virtual {v7, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 145
    monitor-enter v1

    const-wide/16 v3, 0xbb8

    .line 147
    :try_start_0
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    goto :goto_1

    .line 151
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    iget v8, v2, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    const-string v7, "timeout!"

    const/4 v8, 0x0

    .line 161
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    new-instance v7, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$InputParcelNotFound;

    const-string v8, "should not happen!"

    invoke-direct {v7, v8}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$InputParcelNotFound;-><init>(Ljava/lang/String;)V

    throw v7

    .line 159
    :pswitch_0
    new-instance v7, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$InputParcelNotFound;

    invoke-direct {v7}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$InputParcelNotFound;-><init>()V

    throw v7

    .line 155
    :pswitch_1
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 156
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v7, "crypto_input_parcel"

    .line 157
    invoke-virtual {v8, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    return-object v7

    .line 151
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;--->getCryptoInputParcel(Landroid/content/Context;Ljava/util/UUID;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 243
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->mBinder:Landroid/os/IBinder;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;--->onBind(Landroid/content/Intent;)Landroid/os/IBinder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate()V
    .locals 5

    move-object/16 v2, p0

    .line 230
    invoke-super {v2}, Landroid/app/Service;->onCreate()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;--->onCreate()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput-object v2, v2, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->mContext:Landroid/content/Context;

    const-string v0, "CryptoInputParcelCacheService, onCreate()"

    const/4 v1, 0x0

    .line 232
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    move-object/16 v2, p0

    .line 237
    invoke-super {v2}, Landroid/app/Service;->onDestroy()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;--->onDestroy()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CryptoInputParcelCacheService, onDestroy()"

    const/4 v1, 0x0

    .line 238
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move/16 v9, p2

    move/16 p0, p3

    const/4 v9, 0x2

    if-eqz v8, :cond_6

    .line 172
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 176
    :cond_0
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x582ce0cd

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const v2, -0x582cca18

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "org.sufficientlysecure.keychain.action.GET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "org.sufficientlysecure.keychain.action.ADD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v8, "CryptoInputParcelCacheService: Intent or Intent Action not supported!"

    .line 214
    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {v8, p0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_0
    const-string p0, "uuid1"

    .line 188
    invoke-virtual {v8, p0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string p0, "uuid2"

    .line 189
    invoke-virtual {v8, p0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 190
    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v5, v6, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    const-string v0, "messenger"

    .line 191
    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/Messenger;

    .line 193
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 195
    sget-object v1, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->NULL_UUID:Ljava/util/UUID;

    invoke-virtual {v1, p0}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v1

    if-nez v1, :cond_4

    .line 196
    iput v9, v0, Landroid/os/Message;->what:I

    goto :goto_1

    .line 198
    :cond_4
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    .line 199
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iput v3, v0, Landroid/os/Message;->what:I

    .line 201
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "crypto_input_parcel"

    .line 202
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    invoke-virtual {v0, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 207
    :goto_1
    :try_start_0
    invoke-virtual {v8, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    const-string p0, "CryptoInputParcelCacheService: Sending message failed"

    .line 209
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v8, p0, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    const-string p0, "uuid1"

    .line 179
    invoke-virtual {v8, p0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string p0, "uuid2"

    .line 180
    invoke-virtual {v8, p0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 181
    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v5, v6, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    const-string v0, "crypto_input_parcel"

    .line 182
    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    .line 183
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :goto_2
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v8

    if-gtz v8, :cond_5

    const-string v8, "CryptoInputParcelCacheService: No passphrases remaining in memory, stopping service!"

    .line 221
    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {v8, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->stopSelf()V

    :cond_5
    return v9

    :cond_6
    :goto_3
    return v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;--->onStartCommand(Landroid/content/Intent;II)I"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
