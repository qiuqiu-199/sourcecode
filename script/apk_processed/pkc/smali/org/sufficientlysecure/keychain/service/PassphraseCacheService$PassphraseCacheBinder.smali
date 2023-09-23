.class public Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$PassphraseCacheBinder;
.super Landroid/os/Binder;
.source "PassphraseCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PassphraseCacheBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 570
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$PassphraseCacheBinder;->this$0:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$PassphraseCacheBinder;---><init>(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getService()Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;
    .locals 4

    move-object/16 v1, p0

    .line 572
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$PassphraseCacheBinder;->this$0:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$PassphraseCacheBinder;--->getService()Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
