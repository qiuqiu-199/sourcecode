.class public Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;
.super Lorg/sufficientlysecure/keychain/remote/OpenPgpService;
.source "OpenPgpService2.java"


# instance fields
.field private final mBinder:Lorg/openintents/openpgp/IOpenPgpService2$Stub;

.field private mOutputPipeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 32
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;->mOutputPipeMap:Ljava/util/Map;

    .line 41
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2$1;-><init>(Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;->mBinder:Lorg/openintents/openpgp/IOpenPgpService2$Stub;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;I)J
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;->createKey(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;->mOutputPipeMap:Ljava/util/Map;

    return-object p0
.end method

.method private createKey(I)J
    .locals 11

    move-object/16 v8, p0

    move/16 v9, p1

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, v9

    const-wide/32 v4, 0xfffffff

    and-long v6, v2, v4

    or-long v2, v0, v6

    return-wide v2

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;--->createKey(I)J"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 68
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;->mBinder:Lorg/openintents/openpgp/IOpenPgpService2$Stub;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;--->onBind(Landroid/content/Intent;)Landroid/os/IBinder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
