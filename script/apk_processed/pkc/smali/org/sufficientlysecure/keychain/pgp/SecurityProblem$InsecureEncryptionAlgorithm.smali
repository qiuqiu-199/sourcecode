.class public Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureEncryptionAlgorithm;
.super Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;
.source "SecurityProblem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsecureEncryptionAlgorithm"
.end annotation


# instance fields
.field public final symmetricAlgorithm:I


# direct methods
.method constructor <init>([BI)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    const/4 v0, 0x0

    .line 122
    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;-><init>([BLorg/sufficientlysecure/keychain/pgp/SecurityProblem$1;)V

    .line 123
    iput v3, v1, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureEncryptionAlgorithm;->symmetricAlgorithm:I

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureEncryptionAlgorithm;---><init>([BI)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
