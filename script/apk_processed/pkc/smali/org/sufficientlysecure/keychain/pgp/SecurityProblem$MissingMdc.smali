.class public Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$MissingMdc;
.super Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;
.source "SecurityProblem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissingMdc"
.end annotation


# direct methods
.method constructor <init>([B)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x0

    .line 129
    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;-><init>([BLorg/sufficientlysecure/keychain/pgp/SecurityProblem$1;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$MissingMdc;---><init>([B)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
