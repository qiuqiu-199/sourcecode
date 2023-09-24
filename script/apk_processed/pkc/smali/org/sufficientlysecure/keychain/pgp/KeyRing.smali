.class public abstract Lorg/sufficientlysecure/keychain/pgp/KeyRing;
.super Ljava/lang/Object;
.source "KeyRing.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/KeyRing;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createUserId(Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;)Ljava/lang/String;
    .locals 3

    move-object/16 v0, p0

    .line 62
    invoke-static {v0}, Lorg/openintents/openpgp/util/OpenPgpUtils;->createUserId(Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/KeyRing;--->createUserId(Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;)Ljava/lang/String;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;
    .locals 3

    move-object/16 v0, p0

    .line 55
    invoke-static {v0}, Lorg/openintents/openpgp/util/OpenPgpUtils;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v0

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/KeyRing;--->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getEncryptId()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;
        }
    .end annotation
.end method

.method public abstract getMasterKeyId()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPrimaryUserIdWithFallback()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;
        }
    .end annotation
.end method

.method public abstract getVerified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;
        }
    .end annotation
.end method

.method public abstract isRevoked()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;
        }
    .end annotation
.end method
