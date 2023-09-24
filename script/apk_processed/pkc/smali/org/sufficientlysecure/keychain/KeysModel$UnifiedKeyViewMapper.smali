.class public final Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;
.super Ljava/lang/Object;
.source "KeysModel.java"

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeysModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnifiedKeyViewMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;",
        "T1::",
        "Lorg/sufficientlysecure/keychain/CertsModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final certsModelFactory:Lorg/sufficientlysecure/keychain/CertsModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "TT1;>;"
        }
    .end annotation
.end field

.field private final creator:Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator<",
            "TT;>;",
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "TT1;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 360
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;->creator:Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;

    .line 362
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;->certsModelFactory:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;---><init>(Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v35, p0

    move-object/16 v36, p1

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    .line 368
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;->creator:Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;

    const/4 v3, 0x0

    .line 369
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    .line 370
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    const/4 v8, 0x2

    .line 371
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x3

    .line 372
    invoke-interface {v1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_0
    const/4 v11, 0x4

    .line 373
    invoke-interface {v1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_1
    const/4 v13, 0x5

    .line 374
    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_2
    const/4 v14, 0x6

    .line 375
    invoke-interface {v1, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_3
    const/4 v15, 0x7

    .line 376
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v3, 0x8

    .line 377
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v32, v13

    const/4 v13, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v32, v13

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v13, v3

    :goto_4
    const/16 v3, 0x9

    .line 378
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_5

    const/16 v17, 0x1

    goto :goto_5

    :cond_5
    const/16 v17, 0x0

    :goto_5
    const/16 v3, 0xa

    .line 379
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_6

    const/16 v18, 0x1

    goto :goto_6

    :cond_6
    const/16 v18, 0x0

    :goto_6
    const/16 v3, 0xb

    .line 380
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_7

    const/16 v30, 0x1

    goto :goto_7

    :cond_7
    const/16 v30, 0x0

    :goto_7
    const/16 v3, 0xc

    .line 381
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object/from16 v33, v13

    const/16 v19, 0x0

    goto :goto_8

    :cond_8
    iget-object v6, v0, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;->certsModelFactory:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    iget-object v6, v6, Lorg/sufficientlysecure/keychain/CertsModel$Factory;->verifiedAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    move-object/from16 v33, v13

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v6, v3}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-object/from16 v19, v3

    :goto_8
    const/16 v3, 0xd

    .line 382
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/16 v3, 0xe

    .line 383
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const/16 v3, 0xf

    .line 384
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const/16 v3, 0x10

    .line 385
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const/16 v3, 0x11

    .line 386
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    const/16 v3, 0x12

    .line 387
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v34, 0x0

    goto :goto_9

    :cond_9
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v34, v3

    :goto_9
    const/16 v3, 0x13

    .line 388
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v31, 0x0

    goto :goto_a

    :cond_a
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    :goto_a
    move-object v1, v2

    move-wide v2, v4

    move-object v4, v7

    move-wide v5, v8

    move-object v7, v10

    move-object v8, v11

    move-object/from16 v9, v32

    move-object v10, v14

    move-wide v11, v15

    move-object/from16 v13, v33

    move/from16 v14, v17

    move/from16 v15, v18

    move/from16 v16, v30

    move-object/from16 v17, v19

    move-wide/from16 v18, v20

    move-wide/from16 v20, v22

    move-wide/from16 v22, v24

    move-wide/from16 v24, v26

    move-wide/from16 v26, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v31

    .line 368
    invoke-interface/range {v1 .. v29}, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;->create(J[BJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;JJJJJLjava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;

    move-result-object v1

    return-object v1

    const-string v37, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
