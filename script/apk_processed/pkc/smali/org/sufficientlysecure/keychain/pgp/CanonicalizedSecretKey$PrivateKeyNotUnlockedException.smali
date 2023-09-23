.class Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$PrivateKeyNotUnlockedException;
.super Ljava/lang/RuntimeException;
.source "CanonicalizedSecretKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrivateKeyNotUnlockedException"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 398
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$PrivateKeyNotUnlockedException;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
