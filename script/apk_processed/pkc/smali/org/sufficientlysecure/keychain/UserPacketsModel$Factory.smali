.class public final Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;
.super Ljava/lang/Object;
.source "UserPacketsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/UserPacketsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdStatusByEmailLikeQuery;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdStatusByEmailQuery;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectSpecificUserAttributeQuery;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserAttributesByTypeAndMasterKeyIdQuery;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdAndVerificationQuery;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/UserPacketsModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final creator:Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 376
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;->creator:Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;---><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public selectSpecificUserAttribute(Ljava/lang/Long;JI)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-wide/16 v9, p2

    move/16 p1, p4

    .line 402
    new-instance v6, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectSpecificUserAttributeQuery;

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-wide v3, v9

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectSpecificUserAttributeQuery;-><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;Ljava/lang/Long;JI)V

    return-object v6

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;--->selectSpecificUserAttribute(Ljava/lang/Long;JI)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectSpecificUserAttributeMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeModel;",
            ">(",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeCreator<",
            "TR;>;)",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeMapper<",
            "TR;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 436
    new-instance v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeMapper;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeMapper;-><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeCreator;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;--->selectSpecificUserAttributeMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeMapper;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUserAttributesByTypeAndMasterKeyId(Ljava/lang/Long;J)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-wide/16 v3, p2

    .line 396
    new-instance v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserAttributesByTypeAndMasterKeyIdQuery;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserAttributesByTypeAndMasterKeyIdQuery;-><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;Ljava/lang/Long;J)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;--->selectUserAttributesByTypeAndMasterKeyId(Ljava/lang/Long;J)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUserAttributesByTypeAndMasterKeyIdMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdModel;",
            ">(",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdCreator<",
            "TR;>;)",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper<",
            "TR;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 430
    new-instance v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper;-><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdCreator;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;--->selectUserAttributesByTypeAndMasterKeyIdMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUserIdStatusByEmail([Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 407
    new-instance v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdStatusByEmailQuery;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdStatusByEmailQuery;-><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;[Ljava/lang/String;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;--->selectUserIdStatusByEmail([Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUserIdStatusByEmailLike(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 412
    new-instance v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdStatusByEmailLikeQuery;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdStatusByEmailLikeQuery;-><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;Ljava/lang/String;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;--->selectUserIdStatusByEmailLike(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUserIdStatusByEmailLikeMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusModel;",
            ">(",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator<",
            "TR;>;)",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper<",
            "TR;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 448
    new-instance v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;-><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;--->selectUserIdStatusByEmailLikeMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUserIdStatusByEmailMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusModel;",
            ">(",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator<",
            "TR;>;)",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper<",
            "TR;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 442
    new-instance v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;-><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;--->selectUserIdStatusByEmailMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUserIdsByMasterKeyId([J)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 382
    new-instance v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdQuery;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdQuery;-><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;[J)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;--->selectUserIdsByMasterKeyId([J)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUserIdsByMasterKeyIdAndVerification(Lorg/sufficientlysecure/keychain/CertsModel$Factory;JLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "+",
            "Lorg/sufficientlysecure/keychain/CertsModel;",
            ">;J",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;",
            ")",
            "Lcom/squareup/sqldelight/SqlDelightQuery;"
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-wide/16 v9, p2

    move-object/16 p1, p4

    .line 389
    new-instance v6, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdAndVerificationQuery;

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-wide v3, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdAndVerificationQuery;-><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;Lorg/sufficientlysecure/keychain/CertsModel$Factory;JLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V

    return-object v6

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;--->selectUserIdsByMasterKeyIdAndVerification(Lorg/sufficientlysecure/keychain/CertsModel$Factory;JLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUserIdsByMasterKeyIdAndVerificationMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationModel;",
            ">(",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationCreator<",
            "TR;>;)",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationMapper<",
            "TR;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 424
    new-instance v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationMapper;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationMapper;-><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationCreator;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;--->selectUserIdsByMasterKeyIdAndVerificationMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationMapper;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUserIdsByMasterKeyIdMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdModel;",
            ">(",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdCreator<",
            "TR;>;)",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper<",
            "TR;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 418
    new-instance v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;-><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdCreator;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;--->selectUserIdsByMasterKeyIdMapper(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdCreator;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
