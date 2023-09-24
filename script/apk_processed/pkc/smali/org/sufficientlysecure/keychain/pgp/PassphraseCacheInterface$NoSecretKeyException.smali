.class public Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException;
.super Ljava/lang/Exception;
.source "PassphraseCacheInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoSecretKeyException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 24
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
