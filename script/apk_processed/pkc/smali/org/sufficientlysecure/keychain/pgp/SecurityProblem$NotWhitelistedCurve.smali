.class public Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;
.super Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;
.source "SecurityProblem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotWhitelistedCurve"
.end annotation


# instance fields
.field public final curveOid:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLjava/lang/String;I)V
    .locals 10

    move-object/16 v7, p0

    move-wide/16 v8, p1

    move-wide/16 p0, p3

    move-object/16 p2, p5

    move/16 p3, p6

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, v8

    move-wide v3, p0

    move v5, p3

    .line 99
    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;-><init>(JJILorg/sufficientlysecure/keychain/pgp/SecurityProblem$1;)V

    .line 100
    iput-object p2, v7, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;->curveOid:Ljava/lang/String;

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;---><init>(JJLjava/lang/String;I)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
