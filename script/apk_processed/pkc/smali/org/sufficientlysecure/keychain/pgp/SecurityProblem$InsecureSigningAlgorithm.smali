.class public Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;
.super Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;
.source "SecurityProblem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsecureSigningAlgorithm"
.end annotation


# instance fields
.field public final hashAlgorithm:I


# direct methods
.method constructor <init>(I)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 113
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;-><init>()V

    .line 114
    iput v1, v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;->hashAlgorithm:I

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;---><init>(I)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
