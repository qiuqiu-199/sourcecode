.class Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;
.super Ljava/lang/Object;
.source "OpenPgpDecryptionResultBuilder.java"


# instance fields
.field private decryptedSessionKey:[B

.field private isEncrypted:Z

.field private isInsecure:Z

.field private sessionKey:[B


# direct methods
.method constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 24
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->isInsecure:Z

    .line 28
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->isEncrypted:Z

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public build()Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    .locals 7

    move-object/16 v4, p0

    .line 41
    iget-boolean v0, v4, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->isInsecure:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "RESULT_INSECURE"

    .line 42
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    new-instance v0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->sessionKey:[B

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->decryptedSessionKey:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;-><init>(I[B[B)V

    return-object v0

    .line 46
    :cond_0
    iget-boolean v0, v4, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->isEncrypted:Z

    if-eqz v0, :cond_1

    const-string v0, "RESULT_ENCRYPTED"

    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    new-instance v0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    const/4 v1, 0x1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->sessionKey:[B

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->decryptedSessionKey:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;-><init>(I[B[B)V

    return-object v0

    :cond_1
    const-string v0, "RESULT_NOT_ENCRYPTED"

    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    new-instance v0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;-><init>(I)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;--->build()Lorg/openintents/openpgp/OpenPgpDecryptionResult;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setEncrypted(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 37
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->isEncrypted:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;--->setEncrypted(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setInsecure(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 33
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->isInsecure:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;--->setInsecure(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setSessionKey([B[B)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eq v2, v0, :cond_2

    .line 58
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "sessionKey must be null iff decryptedSessionKey is null!"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 60
    :cond_2
    iput-object v4, v3, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->sessionKey:[B

    .line 61
    iput-object v5, v3, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->decryptedSessionKey:[B

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;--->setSessionKey([B[B)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
