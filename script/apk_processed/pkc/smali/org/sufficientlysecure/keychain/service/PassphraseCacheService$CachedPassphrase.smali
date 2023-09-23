.class Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;
.super Ljava/lang/Object;
.source "PassphraseCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedPassphrase"
.end annotation


# instance fields
.field private mPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field private mPrimaryUserId:Ljava/lang/String;

.field private mTimeoutMode:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;

.field private mTimeoutTime:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;Ljava/lang/Long;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 588
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->mPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 590
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->mPrimaryUserId:Ljava/lang/String;

    .line 591
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->mTimeoutMode:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;

    .line 592
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->mTimeoutTime:Ljava/lang/Long;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;---><init>(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;Ljava/lang/Long;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;)Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 0

    .line 582
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->mPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;)Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;
    .locals 0

    .line 582
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->mTimeoutMode:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;

    return-object p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;)Ljava/lang/String;
    .locals 0

    .line 582
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;->mPrimaryUserId:Ljava/lang/String;

    return-object p0
.end method

.method static getPassphraseLock(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 604
    new-instance v0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;->LOCK:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;-><init>(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;Ljava/lang/Long;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;--->getPassphraseLock(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static getPassphraseNoTimeout(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 596
    new-instance v0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;->NEVER:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;-><init>(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;Ljava/lang/Long;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;--->getPassphraseNoTimeout(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static getPassphraseTtlTimeout(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;J)Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-wide/16 v4, p2

    .line 600
    new-instance v0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;->TTL:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;

    invoke-static {v4, p0}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;-><init>(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$TimeoutMode;Ljava/lang/Long;)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;--->getPassphraseTtlTimeout(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;J)Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$CachedPassphrase;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
