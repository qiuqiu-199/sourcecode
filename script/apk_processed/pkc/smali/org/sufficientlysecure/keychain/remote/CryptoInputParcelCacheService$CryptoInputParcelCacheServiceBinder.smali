.class public Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$CryptoInputParcelCacheServiceBinder;
.super Landroid/os/Binder;
.source "CryptoInputParcelCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CryptoInputParcelCacheServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 246
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$CryptoInputParcelCacheServiceBinder;->this$0:Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$CryptoInputParcelCacheServiceBinder;---><init>(Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getService()Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;
    .locals 4

    move-object/16 v1, p0

    .line 248
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$CryptoInputParcelCacheServiceBinder;->this$0:Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$CryptoInputParcelCacheServiceBinder;--->getService()Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
