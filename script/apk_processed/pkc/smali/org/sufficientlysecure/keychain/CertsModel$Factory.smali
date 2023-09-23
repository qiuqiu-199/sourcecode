.class public final Lorg/sufficientlysecure/keychain/CertsModel$Factory;
.super Ljava/lang/Object;
.source "CertsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/CertsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/CertsModel$Factory$SelectVerifyingCertDetailsQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/CertsModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final creator:Lorg/sufficientlysecure/keychain/CertsModel$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/CertsModel$Creator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final verifiedAdapter:Lcom/squareup/sqldelight/ColumnAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/CertsModel$Creator;Lcom/squareup/sqldelight/ColumnAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/CertsModel$Creator<",
            "TT;>;",
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 136
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/CertsModel$Factory;->creator:Lorg/sufficientlysecure/keychain/CertsModel$Creator;

    .line 138
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/CertsModel$Factory;->verifiedAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/CertsModel$Factory;---><init>(Lorg/sufficientlysecure/keychain/CertsModel$Creator;Lcom/squareup/sqldelight/ColumnAdapter;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public selectVerifyingCertDetails(JJ)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 10

    move-object/16 v7, p0

    move-wide/16 v8, p1

    move-wide/16 p0, p3

    .line 143
    new-instance v6, Lorg/sufficientlysecure/keychain/CertsModel$Factory$SelectVerifyingCertDetailsQuery;

    move-object v0, v6

    move-object v1, v7

    move-wide v2, v8

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/CertsModel$Factory$SelectVerifyingCertDetailsQuery;-><init>(Lorg/sufficientlysecure/keychain/CertsModel$Factory;JJ)V

    return-object v6

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/CertsModel$Factory;--->selectVerifyingCertDetails(JJ)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectVerifyingCertDetailsMapper(Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;)Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsModel;",
            ">(",
            "Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator<",
            "TR;>;)",
            "Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper<",
            "TR;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 149
    new-instance v0, Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;-><init>(Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/CertsModel$Factory;--->selectVerifyingCertDetailsMapper(Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;)Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
