.class public final Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper;
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
    name = "SelectSubkeysByMasterKeyIdMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdModel;",
        "T1::",
        "Lorg/sufficientlysecure/keychain/KeysModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final creator:Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final keysModelFactory:Lorg/sufficientlysecure/keychain/KeysModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeysModel$Factory<",
            "TT1;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator;Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator<",
            "TT;>;",
            "Lorg/sufficientlysecure/keychain/KeysModel$Factory<",
            "TT1;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 216
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper;->creator:Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator;

    .line 218
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper;->keysModelFactory:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper;---><init>(Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator;Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 210
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdModel;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v28, p0

    move-object/16 v29, p1

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    .line 224
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper;->creator:Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator;

    const/4 v3, 0x0

    .line 225
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    .line 226
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x2

    .line 227
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x3

    .line 228
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

    .line 229
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

    .line 230
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x6

    .line 231
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    const/4 v3, 0x7

    .line 232
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_2

    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :goto_2
    const/16 v3, 0x8

    .line 233
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    const/16 v3, 0x9

    .line 234
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_4

    const/16 v18, 0x1

    goto :goto_4

    :cond_4
    const/16 v18, 0x0

    :goto_4
    const/16 v3, 0xa

    .line 235
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_5

    const/16 v19, 0x1

    goto :goto_5

    :cond_5
    const/16 v19, 0x0

    :goto_5
    const/16 v3, 0xb

    .line 236
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_6

    const/16 v20, 0x1

    goto :goto_6

    :cond_6
    const/16 v20, 0x0

    :goto_6
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper;->keysModelFactory:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->has_secretAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    const/16 v13, 0xc

    move-wide/from16 v24, v7

    .line 237
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    const/16 v3, 0xd

    .line 238
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    const/16 v22, 0x1

    goto :goto_7

    :cond_7
    const/16 v22, 0x0

    :goto_7
    const/16 v3, 0xe

    .line 239
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const/16 v3, 0xf

    .line 240
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v23, 0x0

    goto :goto_8

    :cond_8
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v23, v1

    :goto_8
    move-object v1, v2

    move-wide v2, v4

    move-wide/from16 v4, v24

    move-wide v6, v9

    move-object v8, v11

    move-object v9, v12

    move v10, v14

    move-object v11, v15

    move/from16 v12, v16

    move/from16 v13, v17

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v16, v20

    move-object/from16 v17, v21

    move/from16 v18, v22

    move-wide/from16 v19, v26

    move-object/from16 v21, v23

    .line 224
    invoke-interface/range {v1 .. v21}, Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator;->create(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZJLjava/lang/Long;)Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdModel;

    move-result-object v1

    return-object v1

    const-string v30, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdModel;"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
