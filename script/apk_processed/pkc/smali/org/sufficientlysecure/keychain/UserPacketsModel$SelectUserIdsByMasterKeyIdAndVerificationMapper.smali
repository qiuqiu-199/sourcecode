.class public final Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationMapper;
.super Ljava/lang/Object;
.source "UserPacketsModel.java"

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/UserPacketsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectUserIdsByMasterKeyIdAndVerificationMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final creator:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationCreator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationCreator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationCreator<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 197
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationMapper;->creator:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationCreator;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationMapper;---><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationCreator;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationModel;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v16, p0

    move-object/16 v17, p1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    .line 204
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationMapper;->creator:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationCreator;

    const/4 v3, 0x0

    .line 205
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    .line 206
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x2

    .line 207
    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    move-object v8, v10

    goto :goto_0

    :cond_0
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    const/4 v9, 0x3

    .line 208
    invoke-interface {v1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v9, v10

    goto :goto_1

    :cond_1
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    const/4 v11, 0x4

    .line 209
    invoke-interface {v1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v11, v10

    goto :goto_2

    :cond_2
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_2
    const/4 v12, 0x5

    .line 210
    invoke-interface {v1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v12, v10

    goto :goto_3

    :cond_3
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_3
    const/4 v13, 0x6

    .line 211
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v6, :cond_4

    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_4
    const/4 v14, 0x7

    .line 212
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-ne v14, v6, :cond_5

    const/4 v14, 0x1

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    :goto_5
    const/16 v3, 0x8

    .line 213
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v0, v10

    goto :goto_6

    :cond_6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_6
    move-object v1, v2

    move-wide v2, v4

    move v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v11

    move-object v8, v12

    move v9, v13

    move v10, v14

    move-object v11, v0

    .line 204
    invoke-interface/range {v1 .. v11}, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationCreator;->create(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Long;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationModel;

    move-result-object v0

    return-object v0

    const-string v18, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationMapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationModel;"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
