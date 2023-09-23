.class public final Lorg/sufficientlysecure/keychain/KeysModel$Mapper;
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
    name = "Mapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/KeysModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final keysModelFactory:Lorg/sufficientlysecure/keychain/KeysModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeysModel$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/KeysModel$Factory<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 404
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/KeysModel$Mapper;->keysModelFactory:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeysModel$Mapper;---><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 401
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/KeysModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v27, p0

    move-object/16 v28, p1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    .line 410
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/KeysModel$Mapper;->keysModelFactory:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    iget-object v3, v2, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->creator:Lorg/sufficientlysecure/keychain/KeysModel$Creator;

    const/4 v2, 0x0

    .line 411
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    .line 412
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x2

    .line 413
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x3

    .line 414
    invoke-interface {v1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_0
    const/4 v12, 0x4

    .line 415
    invoke-interface {v1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_1
    const/4 v14, 0x5

    .line 416
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x6

    .line 417
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    const/4 v2, 0x7

    .line 418
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v6, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/16 v13, 0x8

    .line 419
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v6, :cond_3

    const/16 v16, 0x1

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    const/16 v13, 0x9

    .line 420
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v6, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    :goto_4
    const/16 v13, 0xa

    .line 421
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v6, :cond_5

    const/16 v18, 0x1

    goto :goto_5

    :cond_5
    const/16 v18, 0x0

    :goto_5
    const/16 v13, 0xb

    .line 422
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v6, :cond_6

    const/16 v19, 0x1

    goto :goto_6

    :cond_6
    const/16 v19, 0x0

    :goto_6
    iget-object v13, v0, Lorg/sufficientlysecure/keychain/KeysModel$Mapper;->keysModelFactory:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    iget-object v13, v13, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->has_secretAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    const/16 v6, 0xc

    move/from16 v25, v14

    move-object/from16 v26, v15

    .line 423
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v13, v6}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v20, v6

    check-cast v20, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    const/16 v6, 0xd

    .line 424
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v13, 0x1

    if-ne v6, v13, :cond_7

    const/16 v24, 0x1

    goto :goto_7

    :cond_7
    const/16 v24, 0x0

    :goto_7
    const/16 v6, 0xe

    .line 425
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const/16 v6, 0xf

    .line 426
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v23, 0x0

    goto :goto_8

    :cond_8
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v23, v1

    :goto_8
    move-wide v6, v7

    move-wide v8, v9

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v25

    move-object/from16 v13, v26

    move v14, v2

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v24

    .line 410
    invoke-interface/range {v3 .. v23}, Lorg/sufficientlysecure/keychain/KeysModel$Creator;->create(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZJLjava/lang/Long;)Lorg/sufficientlysecure/keychain/KeysModel;

    move-result-object v1

    return-object v1

    const-string v29, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeysModel$Mapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel;"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
