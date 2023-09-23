.class public final Lorg/sufficientlysecure/keychain/KeysModel$Factory;
.super Ljava/lang/Object;
.source "KeysModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeysModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectEffectiveAuthKeyIdByMasterKeyIdQuery;,
        Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectEffectiveSignKeyIdByMasterKeyIdQuery;,
        Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectFingerprintByKeyIdQuery;,
        Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectSecretKeyTypeQuery;,
        Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectSubkeysByMasterKeyIdQuery;,
        Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectMasterKeyIdBySubkeyQuery;,
        Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectUnifiedKeyInfoSearchMailAddressQuery;,
        Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectUnifiedKeyInfoByMasterKeyIdsQuery;,
        Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectUnifiedKeyInfoByMasterKeyIdQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/KeysModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final creator:Lorg/sufficientlysecure/keychain/KeysModel$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeysModel$Creator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final has_secretAdapter:Lcom/squareup/sqldelight/ColumnAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/KeysModel$Creator;Lcom/squareup/sqldelight/ColumnAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/KeysModel$Creator<",
            "TT;>;",
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 437
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->creator:Lorg/sufficientlysecure/keychain/KeysModel$Creator;

    .line 439
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->has_secretAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;---><init>(Lorg/sufficientlysecure/keychain/KeysModel$Creator;Lcom/squareup/sqldelight/ColumnAdapter;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public selectAllUnifiedKeyInfo()Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 9

    move-object/16 v6, p0

    .line 444
    new-instance v0, Lcom/squareup/sqldelight/SqlDelightQuery;

    const-string v1, "SELECT * FROM unifiedKeyView\n    ORDER BY has_any_secret_int DESC, IFNULL(name, email) COLLATE NOCASE ASC, creation DESC"

    new-instance v2, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "keys"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "user_packets"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "certs"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "autocrypt_peers"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectAllUnifiedKeyInfo()Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectAllUnifiedKeyInfoMapper(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;",
            "T1::",
            "Lorg/sufficientlysecure/keychain/CertsModel;",
            ">(",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator<",
            "TR;>;",
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "TT1;>;)",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper<",
            "TR;TT1;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 507
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectAllUnifiedKeyInfoMapper(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectAllUnifiedKeyInfoWithSecret()Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 9

    move-object/16 v6, p0

    .line 467
    new-instance v0, Lcom/squareup/sqldelight/SqlDelightQuery;

    const-string v1, "SELECT * FROM unifiedKeyView\n    WHERE has_any_secret_int = 1\n   ORDER BY creation DESC"

    new-instance v2, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "keys"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "user_packets"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "certs"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "autocrypt_peers"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectAllUnifiedKeyInfoWithSecret()Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectAllUnifiedKeyInfoWithSecretMapper(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;",
            "T1::",
            "Lorg/sufficientlysecure/keychain/CertsModel;",
            ">(",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator<",
            "TR;>;",
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "TT1;>;)",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper<",
            "TR;TT1;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 531
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectAllUnifiedKeyInfoWithSecretMapper(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectEffectiveAuthKeyIdByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 501
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectEffectiveAuthKeyIdByMasterKeyIdQuery;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectEffectiveAuthKeyIdByMasterKeyIdQuery;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;J)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectEffectiveAuthKeyIdByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectEffectiveAuthKeyIdByMasterKeyIdMapper()Lcom/squareup/sqldelight/RowMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/sqldelight/RowMapper<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 577
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$5;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$5;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectEffectiveAuthKeyIdByMasterKeyIdMapper()Lcom/squareup/sqldelight/RowMapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectEffectiveSignKeyIdByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 496
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectEffectiveSignKeyIdByMasterKeyIdQuery;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectEffectiveSignKeyIdByMasterKeyIdQuery;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;J)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectEffectiveSignKeyIdByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectEffectiveSignKeyIdByMasterKeyIdMapper()Lcom/squareup/sqldelight/RowMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/sqldelight/RowMapper<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 568
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$4;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$4;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectEffectiveSignKeyIdByMasterKeyIdMapper()Lcom/squareup/sqldelight/RowMapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectFingerprintByKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 491
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectFingerprintByKeyIdQuery;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectFingerprintByKeyIdQuery;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;J)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectFingerprintByKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectFingerprintByKeyIdMapper()Lcom/squareup/sqldelight/RowMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/sqldelight/RowMapper<",
            "[B>;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 559
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$3;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$3;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectFingerprintByKeyIdMapper()Lcom/squareup/sqldelight/RowMapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectMasterKeyIdBySubkey(J)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 476
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectMasterKeyIdBySubkeyQuery;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectMasterKeyIdBySubkeyQuery;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;J)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectMasterKeyIdBySubkey(J)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectMasterKeyIdBySubkeyMapper()Lcom/squareup/sqldelight/RowMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/sqldelight/RowMapper<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 535
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$1;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectMasterKeyIdBySubkeyMapper()Lcom/squareup/sqldelight/RowMapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectSecretKeyType(J)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 486
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectSecretKeyTypeQuery;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectSecretKeyTypeQuery;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;J)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectSecretKeyType(J)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectSecretKeyTypeMapper()Lcom/squareup/sqldelight/RowMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/sqldelight/RowMapper<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 550
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$2;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$2;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectSecretKeyTypeMapper()Lcom/squareup/sqldelight/RowMapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectSubkeysByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 481
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectSubkeysByMasterKeyIdQuery;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectSubkeysByMasterKeyIdQuery;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;J)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectSubkeysByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectSubkeysByMasterKeyIdMapper(Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator;)Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdModel;",
            ">(",
            "Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator<",
            "TR;>;)",
            "Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper<",
            "TR;TT;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 546
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper;

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator;Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectSubkeysByMasterKeyIdMapper(Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator;)Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUnifiedKeyInfoByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 452
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectUnifiedKeyInfoByMasterKeyIdQuery;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectUnifiedKeyInfoByMasterKeyIdQuery;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;J)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectUnifiedKeyInfoByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUnifiedKeyInfoByMasterKeyIdMapper(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;",
            "T1::",
            "Lorg/sufficientlysecure/keychain/CertsModel;",
            ">(",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator<",
            "TR;>;",
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "TT1;>;)",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper<",
            "TR;TT1;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 513
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectUnifiedKeyInfoByMasterKeyIdMapper(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUnifiedKeyInfoByMasterKeyIds([J)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 457
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectUnifiedKeyInfoByMasterKeyIdsQuery;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectUnifiedKeyInfoByMasterKeyIdsQuery;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;[J)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectUnifiedKeyInfoByMasterKeyIds([J)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUnifiedKeyInfoByMasterKeyIdsMapper(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;",
            "T1::",
            "Lorg/sufficientlysecure/keychain/CertsModel;",
            ">(",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator<",
            "TR;>;",
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "TT1;>;)",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper<",
            "TR;TT1;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 519
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectUnifiedKeyInfoByMasterKeyIdsMapper(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUnifiedKeyInfoSearchMailAddress(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 462
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectUnifiedKeyInfoSearchMailAddressQuery;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectUnifiedKeyInfoSearchMailAddressQuery;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;Ljava/lang/String;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectUnifiedKeyInfoSearchMailAddress(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectUnifiedKeyInfoSearchMailAddressMapper(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;",
            "T1::",
            "Lorg/sufficientlysecure/keychain/CertsModel;",
            ">(",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator<",
            "TR;>;",
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "TT1;>;)",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper<",
            "TR;TT1;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 525
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$Factory;--->selectUnifiedKeyInfoSearchMailAddressMapper(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
