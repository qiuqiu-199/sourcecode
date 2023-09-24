.class public Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;
.super Landroid/app/Service;
.source "PassphraseCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;,
        Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;,
        Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$PassphraseCacheBinder;,
        Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$KeyNotFoundException;
    }
.end annotation


# static fields
.field public static final ACTION_PASSPHRASE_CACHE_ADD:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_ADD"

.field public static final ACTION_PASSPHRASE_CACHE_CLEAR:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_CLEAR"

.field public static final ACTION_PASSPHRASE_CACHE_GET:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_GET"

.field public static final BROADCAST_ACTION_PASSPHRASE_CACHE_SERVICE:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_BROADCAST"

.field private static final DEFAULT_TTL:I = 0x0

.field public static final EXTRA_KEY_ID:Ljava/lang/String; = "key_id"

.field public static final EXTRA_MESSENGER:Ljava/lang/String; = "messenger"

.field public static final EXTRA_PASSPHRASE:Ljava/lang/String; = "passphrase"

.field public static final EXTRA_SUBKEY_ID:Ljava/lang/String; = "subkey_id"

.field public static final EXTRA_TTL:Ljava/lang/String; = "ttl"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"

.field private static final MSG_PASSPHRASE_CACHE_GET_KEY_NOT_FOUND:I = 0x2

.field private static final MSG_PASSPHRASE_CACHE_GET_OKAY:I = 0x1


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPassphraseCache:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 80
    invoke-direct {v1}, Landroid/app/Service;-><init>()V

    .line 106
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    .line 576
    new-instance v0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$PassphraseCacheBinder;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$PassphraseCacheBinder;-><init>(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mBinder:Landroid/os/IBinder;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;J)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->removeTimeoutedPassphrase(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->removeScreenLockPassphrases()V

    return-void
.end method

.method public static addCachedPassphrase(Landroid/content/Context;JJLorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;I)V
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    move-wide/16 p0, p3

    move-object/16 p2, p5

    move-object/16 p3, p6

    move/16 p4, p7

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PassphraseCacheService.addCachedPassphrase() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_ADD"

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ttl"

    .line 133
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "passphrase"

    .line 134
    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "key_id"

    .line 135
    invoke-virtual {v0, p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "subkey_id"

    .line 136
    invoke-virtual {v0, v3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "user_id"

    .line 137
    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->addCachedPassphrase(Landroid/content/Context;JJLorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;I)V"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static buildIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key_id"

    .line 330
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    long-to-int v3, v3

    const/high16 v4, 0x10000000

    .line 332
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->buildIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static clearCachedPassphrase(Landroid/content/Context;JJ)V
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    move-wide/16 p0, p3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PassphraseCacheService.clearCachedPassphrase() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_CLEAR"

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_id"

    .line 148
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "subkey_id"

    .line 149
    invoke-virtual {v0, v3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 151
    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->clearCachedPassphrase(Landroid/content/Context;JJ)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static clearCachedPassphrases(Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    const-string v0, "PassphraseCacheService.clearCachedPassphrase()"

    const/4 v1, 0x0

    .line 155
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_CLEAR"

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->clearCachedPassphrases(Landroid/content/Context;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getCachedPassphrase(Landroid/content/Context;JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$KeyNotFoundException;
        }
    .end annotation

    move-object/16 v6, p0

    move-wide/16 v7, p1

    move-wide/16 p0, p3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PassphraseCacheService.getCachedPassphrase() for masterKeyId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", subKeyId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_GET"

    .line 174
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 179
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "getPassphraseThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 181
    new-instance v5, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$1;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v5, v4, v3, v2}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$1;-><init>(Landroid/os/Looper;Landroid/os/Message;Ljava/lang/Object;)V

    .line 196
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v5, "key_id"

    .line 197
    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v7, "subkey_id"

    .line 198
    invoke-virtual {v0, v7, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v7, "messenger"

    .line 199
    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    invoke-virtual {v6, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 206
    monitor-enter v2

    const-wide/16 v7, 0xbb8

    .line 208
    :try_start_0
    invoke-virtual {v2, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    goto :goto_1

    .line 212
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    iget v7, v3, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    const-string v6, "timeout case!"

    .line 222
    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    new-instance v6, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$KeyNotFoundException;

    const-string v7, "should not happen!"

    invoke-direct {v6, v7}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 220
    :pswitch_0
    new-instance v6, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$KeyNotFoundException;

    invoke-direct {v6}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$KeyNotFoundException;-><init>()V

    throw v6

    .line 216
    :pswitch_1
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 217
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v6, "passphrase"

    .line 218
    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lorg/sufficientlysecure/keychain/util/Passphrase;

    return-object v6

    .line 212
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->getCachedPassphrase(Landroid/content/Context;JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getCachedPassphraseImpl(JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;
        }
    .end annotation

    move-object/16 v5, p0

    move-wide/16 v6, p1

    move-wide/16 p0, p3

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, -0x1

    cmp-long v3, v6, v1

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v6, "PassphraseCacheService.getCachedPassphraseImpl() for symmetric encryption"

    .line 238
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v6, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;

    if-nez v6, :cond_1

    return-object v0

    .line 243
    :cond_1
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->access$000(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v6

    return-object v6

    .line 247
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PassphraseCacheService.getCachedPassphraseImpl() for masterKeyId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", subKeyId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v1

    .line 252
    invoke-virtual {v1, p0, p1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v1

    .line 254
    sget-object v2, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$3;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedSecretKey$SecretKeyType:[I

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 264
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;

    if-nez v1, :cond_5

    .line 268
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPassphraseCacheSubs()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v6, "PassphraseCacheService: specific subkey passphrase not (yet) cached, returning null"

    .line 269
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 260
    :pswitch_0
    new-instance v6, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;

    const-string v7, "secret key for stripped subkey is not available"

    invoke-direct {v6, v7}, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 258
    :pswitch_1
    new-instance v6, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;

    const-string v7, "secret key for this subkey is not available"

    invoke-direct {v6, v7}, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 256
    :pswitch_2
    new-instance v6, Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v7, ""

    invoke-direct {v6, v7}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    return-object v6

    :cond_3
    cmp-long v1, p0, v6

    if-nez v1, :cond_4

    const-string v6, "PassphraseCacheService: masterkey passphrase not (yet) cached, returning null"

    .line 275
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 280
    :cond_4
    iget-object p0, v5, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p0, v6, v7}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;

    if-nez v1, :cond_5

    const-string v6, "PassphraseCacheService: keyring passphrase not (yet) cached, returning null"

    .line 283
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 290
    :cond_5
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->access$000(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v6

    return-object v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->getCachedPassphraseImpl(JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getNotification()Landroid/app/Notification;
    .locals 10

    move-object/16 v7, p0

    .line 504
    invoke-static {v7}, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/NotificationChannelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->createNotificationChannelsIfNecessary()V

    .line 506
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "passphraseCache"

    invoke-direct {v0, v7, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0800e5

    .line 507
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 508
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060199

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 509
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v7, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    .line 510
    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v7, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0f0020

    .line 509
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f110bca

    .line 511
    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, -0x1

    .line 512
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 514
    new-instance v1, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    const v2, 0x7f110bc8

    .line 516
    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    const/4 v2, 0x0

    .line 519
    :goto_0
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 520
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->access$400(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 526
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_CLEAR"

    .line 527
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 528
    invoke-static {v2, v6, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 536
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v2, 0x7f08009e

    const v3, 0x7f110bc7

    .line 541
    invoke-virtual {v7, v3}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 545
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->getNotification()Landroid/app/Notification;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private registerReceiver()V
    .locals 5

    move-object/16 v2, p0

    .line 299
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$2;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$2;-><init>(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_BROADCAST"

    .line 319
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v1, v0}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->registerReceiver()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private removeScreenLockPassphrases()V
    .locals 7

    move-object/16 v4, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 476
    :goto_0
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 477
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;

    .line 478
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->access$300(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;)Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;

    move-result-object v2

    sget-object v3, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;->LOCK:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;

    if-ne v2, v3, :cond_0

    .line 480
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "PassphraseCacheService Removing all cached-until-lock passphrases from memory!"

    .line 487
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->updateService()V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->removeScreenLockPassphrases()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private removeTimeoutedPassphrase(J)V
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 459
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;

    if-eqz v0, :cond_1

    .line 461
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->access$000(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 463
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->access$000(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->removeFromMemory()V

    .line 466
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/util/LongSparseArray;->remove(J)V

    .line 469
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PassphraseCacheService Timeout of keyId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", removed from memory!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->updateService()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->removeTimeoutedPassphrase(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private updateService()V
    .locals 6

    move-object/16 v3, p0

    .line 493
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 494
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_0
    const-string v0, "PassphraseCacheService: No passphrases remaining in memory, stopping service!"

    const/4 v2, 0x0

    .line 497
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->stopForeground(Z)V

    .line 499
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->stopSelf()V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->updateService()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 567
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mBinder:Landroid/os/IBinder;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->onBind(Landroid/content/Intent;)Landroid/os/IBinder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate()V
    .locals 5

    move-object/16 v2, p0

    .line 550
    invoke-super {v2}, Landroid/app/Service;->onCreate()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->onCreate()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iput-object v2, v2, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mContext:Landroid/content/Context;

    const-string v0, "PassphraseCacheService, onCreate()"

    const/4 v1, 0x0

    .line 552
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->registerReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    move-object/16 v2, p0

    .line 559
    invoke-super {v2}, Landroid/app/Service;->onDestroy()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->onDestroy()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PassphraseCacheService, onDestroy()"

    const/4 v1, 0x0

    .line 560
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14

    move-object/16 v11, p0

    move-object/16 v12, p1

    move/16 v13, p2

    move/16 p0, p3

    const-string v13, "PassphraseCacheService.onStartCommand()"

    const/4 p0, 0x0

    .line 341
    new-array v0, p0, [Ljava/lang/Object;

    invoke-static {v13, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v13, 0x1

    if-eqz v12, :cond_f

    .line 343
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 348
    :cond_0
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 349
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x46a0f243

    const/4 v4, 0x2

    if-eq v2, v3, :cond_3

    const v3, -0x46a0db8e

    if-eq v2, v3, :cond_2

    const v3, -0x220d8f97

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_CLEAR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_ADD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :cond_4
    :goto_0
    const-wide/16 v2, 0x0

    const-wide/16 v5, -0x1

    packed-switch v1, :pswitch_data_0

    const-string v12, "PassphraseCacheService: Intent or Intent Action not supported!"

    .line 446
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v12, p0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_0
    const-string v0, "alarm"

    .line 417
    invoke-virtual {v11, v0}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const-string v1, "subkey_id"

    .line 419
    invoke-virtual {v12, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "key_id"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 422
    iget-object p0, v11, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object p0

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPassphraseCacheSubs()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "subkey_id"

    .line 423
    invoke-virtual {v12, p0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_1

    :cond_5
    const-string p0, "key_id"

    .line 425
    invoke-virtual {v12, p0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 428
    :goto_1
    invoke-static {v11, v1, v2}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->buildIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 429
    iget-object v12, v11, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v12, v1, v2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto/16 :goto_7

    .line 434
    :cond_6
    :goto_2
    iget-object v12, v11, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v12

    if-ge p0, v12, :cond_8

    .line 435
    iget-object v12, v11, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v12, p0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;

    .line 436
    invoke-static {v12}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->access$300(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;)Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;

    move-result-object v12

    sget-object v1, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;->TTL:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;

    if-ne v12, v1, :cond_7

    .line 437
    iget-object v12, v11, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v12, p0}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    invoke-static {v11, v1, v2}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->buildIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 440
    :cond_8
    iget-object v12, v11, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/support/v4/util/LongSparseArray;->clear()V

    goto/16 :goto_7

    :pswitch_1
    const-string v0, "key_id"

    .line 387
    invoke-virtual {v12, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "subkey_id"

    .line 388
    invoke-virtual {v12, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v7, "messenger"

    .line 389
    invoke-virtual {v12, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/os/Messenger;

    .line 391
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    cmp-long v8, v0, v5

    if-nez v8, :cond_9

    const/4 v8, 0x1

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    cmp-long v9, v2, v5

    if-nez v9, :cond_a

    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_4
    xor-int/2addr v5, v8

    if-eqz v5, :cond_b

    :try_start_0
    const-string v0, "PassphraseCacheService: Bad request, missing masterKeyId or subKeyId!"

    .line 395
    new-array v1, p0, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    iput v4, v7, Landroid/os/Message;->what:I

    goto :goto_5

    .line 398
    :cond_b
    invoke-direct {v11, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getCachedPassphraseImpl(JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    .line 399
    iput v13, v7, Landroid/os/Message;->what:I

    .line 400
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "passphrase"

    .line 401
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 402
    invoke-virtual {v7, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-string v0, "PassphraseCacheService: Passphrase for unknown key was requested!"

    .line 405
    new-array v1, p0, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    iput v4, v7, Landroid/os/Message;->what:I

    .line 410
    :goto_5
    :try_start_1
    invoke-virtual {v12, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v12

    const-string v0, "PassphraseCacheService: Sending message failed"

    .line 412
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v12, v0, p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    const-string v0, "key_id"

    .line 351
    invoke-virtual {v12, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v4, "subkey_id"

    .line 352
    invoke-virtual {v12, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "ttl"

    .line 353
    invoke-virtual {v12, v6, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    const-string v8, "passphrase"

    .line 355
    invoke-virtual {v12, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v9, "user_id"

    .line 356
    invoke-virtual {v12, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 358
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PassphraseCacheService: Received ACTION_PASSPHRASE_CACHE_ADD intent in onStartCommand() with masterkeyId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", subKeyId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", ttl: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", usrId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, p0, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    iget-object v9, v11, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mContext:Landroid/content/Context;

    .line 366
    invoke-static {v9}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v9

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPassphraseCacheSubs()Z

    move-result v9

    if-eqz v9, :cond_c

    move-wide v0, v4

    :cond_c
    cmp-long v4, v6, v2

    if-nez v4, :cond_d

    .line 370
    invoke-static {v8, v12}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->getPassphraseLock(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;

    move-result-object v12

    goto :goto_6

    :cond_d
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v6, v2

    if-ltz v4, :cond_e

    .line 372
    invoke-static {v8, v12}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->getPassphraseNoTimeout(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;

    move-result-object v12

    goto :goto_6

    .line 374
    :cond_e
    invoke-static {v8, v12, v6, v7}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->getPassphraseTtlTimeout(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;J)Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;

    move-result-object v12

    .line 376
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v6, v6, v4

    add-long v4, v2, v6

    const-string v2, "alarm"

    .line 378
    invoke-virtual {v11, v2}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 379
    invoke-static {v11, v0, v1}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->buildIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, p0, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 382
    :goto_6
    iget-object p0, v11, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->mPassphraseCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p0, v0, v1, v12}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 451
    :goto_7
    invoke-direct {v11}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->updateService()V

    return v13

    .line 344
    :cond_f
    :goto_8
    invoke-direct {v11}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->updateService()V

    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;--->onStartCommand(Landroid/content/Intent;II)I"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
