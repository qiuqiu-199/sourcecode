.class public abstract Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;
.super Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;
.source "SecurityProblem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EncryptionAlgorithmProblem"
.end annotation


# instance fields
.field private final sessionKey:[B


# direct methods
.method private constructor <init>([B)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 76
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;-><init>()V

    .line 77
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;->sessionKey:[B

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;---><init>([B)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>([BLorg/sufficientlysecure/keychain/pgp/SecurityProblem$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;-><init>([B)V

    return-void
.end method


# virtual methods
.method public isIdentifiable()Z
    .locals 4

    move-object/16 v1, p0

    .line 82
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;->sessionKey:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;--->isIdentifiable()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
