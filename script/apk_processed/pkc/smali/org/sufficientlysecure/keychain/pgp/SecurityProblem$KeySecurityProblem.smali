.class public abstract Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;
.super Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;
.source "SecurityProblem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KeySecurityProblem"
.end annotation


# instance fields
.field public final algorithm:I

.field public final masterKeyId:J

.field public final subKeyId:J


# direct methods
.method private constructor <init>(JJI)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move-wide/16 p0, p3

    move/16 p2, p5

    .line 60
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;-><init>()V

    .line 61
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;->masterKeyId:J

    .line 62
    iput-wide p0, v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;->subKeyId:J

    .line 63
    iput p2, v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;->algorithm:I

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;---><init>(JJI)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(JJILorg/sufficientlysecure/keychain/pgp/SecurityProblem$1;)V
    .locals 0

    .line 55
    invoke-direct/range {p0 .. p5}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;-><init>(JJI)V

    return-void
.end method


# virtual methods
.method public isIdentifiable()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x1

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;--->isIdentifiable()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
