.class public Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$UnidentifiedKeyProblem;
.super Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;
.source "SecurityProblem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnidentifiedKeyProblem"
.end annotation


# direct methods
.method constructor <init>(JJI)V
    .locals 10

    move-object/16 v7, p0

    move-wide/16 v8, p1

    move-wide/16 p0, p3

    move/16 p2, p5

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, v8

    move-wide v3, p0

    move v5, p2

    .line 106
    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;-><init>(JJILorg/sufficientlysecure/keychain/pgp/SecurityProblem$1;)V

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$UnidentifiedKeyProblem;---><init>(JJI)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
