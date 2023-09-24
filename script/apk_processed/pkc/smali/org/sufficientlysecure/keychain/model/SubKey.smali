.class public abstract Lorg/sufficientlysecure/keychain/model/SubKey;
.super Ljava/lang/Object;
.source "SubKey.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/KeysModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
    }
.end annotation


# static fields
.field public static final FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeysModel$Factory<",
            "Lorg/sufficientlysecure/keychain/model/SubKey;",
            ">;"
        }
    .end annotation
.end field

.field public static SKT_MAPPER:Lcom/squareup/sqldelight/RowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/sqldelight/RowMapper<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;",
            ">;"
        }
    .end annotation
.end field

.field public static SUBKEY_MAPPER:Lorg/sufficientlysecure/keychain/KeysModel$Mapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeysModel$Mapper<",
            "Lorg/sufficientlysecure/keychain/model/SubKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIFIED_KEY_INFO_MAPPER:Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            "Lorg/sufficientlysecure/keychain/model/Certification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/KeysModel$Creator;

    sget-object v2, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;->SECRET_KEY_TYPE_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Creator;Lcom/squareup/sqldelight/ColumnAdapter;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    .line 22
    sget-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/SubKey$$Lambda$1;->$instance:Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;

    sget-object v2, Lorg/sufficientlysecure/keychain/model/Certification;->FACTORY:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectAllUnifiedKeyInfoMapper(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->UNIFIED_KEY_INFO_MAPPER:Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;

    .line 25
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$Mapper;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeysModel$Mapper;-><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->SUBKEY_MAPPER:Lorg/sufficientlysecure/keychain/KeysModel$Mapper;

    .line 26
    sget-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectSecretKeyTypeMapper()Lcom/squareup/sqldelight/RowMapper;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->SKT_MAPPER:Lcom/squareup/sqldelight/RowMapper;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/SubKey;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/SubKey;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZLjava/util/Date;Ljava/util/Date;)Lorg/sufficientlysecure/keychain/model/SubKey;
    .locals 28

    move-wide/16 v25, p0

    move-wide/16 v27, p2

    move-wide/16 p1, p4

    move-object/16 p3, p6

    move-object/16 p4, p7

    move/16 p5, p8

    move-object/16 p6, p9

    move/16 p7, p10

    move/16 p8, p11

    move/16 p9, p12

    move/16 p10, p13

    move/16 p11, p14

    move-object/16 p12, p15

    move/16 p13, p16

    move-object/16 p14, p17

    move-object/16 p15, p18

    .line 35
    invoke-virtual/range {p14 .. p14}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v22, v0, v2

    if-eqz p15, :cond_0

    .line 36
    invoke-virtual/range {p15 .. p15}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    move-object/from16 v24, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :goto_1
    new-instance v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;

    move-object v4, v0

    move-wide/from16 v5, v25

    move-wide/from16 v7, v27

    move-wide/from16 v9, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v18, p10

    move/from16 v19, p11

    move-object/from16 v20, p12

    move/from16 v21, p13

    invoke-direct/range {v4 .. v24}, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;-><init>(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZJLjava/lang/Long;)V

    return-object v0

    const-string p16, "M_InsDal"

    const-string p17, "Lorg/sufficientlysecure/keychain/model/SubKey;--->create(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZLjava/util/Date;Ljava/util/Date;)Lorg/sufficientlysecure/keychain/model/SubKey;"

    invoke-static/range {p16 .. p17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;
    .locals 5

    move-object/16 v2, p0

    .line 42
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/SubKey;--->createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createUpdateHasSecretByKeyId(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByKeyId;
    .locals 5

    move-object/16 v2, p0

    .line 50
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByKeyId;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByKeyId;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/SubKey;--->createUpdateHasSecretByKeyId(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByKeyId;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createUpdateHasSecretByMasterKeyIdStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;
    .locals 5

    move-object/16 v2, p0

    .line 46
    new-instance v0, Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/SubKey;--->createUpdateHasSecretByMasterKeyIdStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;)V
    .locals 24

    move-object/16 v21, p0

    move-object/16 v22, p1

    .line 54
    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->master_key_id()J

    move-result-wide v1

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->rank()J

    move-result-wide v3

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v5

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_size()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_curve_oid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->algorithm()I

    move-result v9

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->fingerprint()[B

    move-result-object v10

    .line 55
    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_certify()Z

    move-result v11

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_sign()Z

    move-result v12

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_encrypt()Z

    move-result v13

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_authenticate()Z

    move-result v14

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->is_revoked()Z

    move-result v15

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->has_secret()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v16

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->is_secure()Z

    move-result v17

    .line 56
    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->creation()J

    move-result-wide v18

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/model/SubKey;->expiry()Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v22

    .line 54
    invoke-virtual/range {v0 .. v20}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bind(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZJLjava/lang/Long;)V

    return-void

    const-string v23, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/SubKey;--->bindTo(Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;)V"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public expires()Z
    .locals 4

    move-object/16 v1, p0

    .line 29
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey;->expiry()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/SubKey;--->expires()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
