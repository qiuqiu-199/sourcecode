.class public final Lorg/sufficientlysecure/keychain/UserPacketsModel$Mapper;
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
    name = "Mapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/UserPacketsModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final userPacketsModelFactory:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 352
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$Mapper;->userPacketsModelFactory:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Mapper;---><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 349
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v14, p0

    move-object/16 v15, p1

    .line 358
    iget-object v0, v14, Lorg/sufficientlysecure/keychain/UserPacketsModel$Mapper;->userPacketsModelFactory:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    iget-object v1, v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;->creator:Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator;

    const/4 v0, 0x0

    .line 359
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    .line 360
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x2

    .line 361
    invoke-interface {v15, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    move-object v6, v8

    goto :goto_0

    :cond_0
    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_0
    const/4 v7, 0x3

    .line 362
    invoke-interface {v15, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v7, v8

    goto :goto_1

    :cond_1
    invoke-interface {v15, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    const/4 v9, 0x4

    .line 363
    invoke-interface {v15, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v9, v8

    goto :goto_2

    :cond_2
    invoke-interface {v15, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_2
    const/4 v10, 0x5

    .line 364
    invoke-interface {v15, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v10, v8

    goto :goto_3

    :cond_3
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_3
    const/4 v11, 0x6

    .line 365
    invoke-interface {v15, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object v11, v8

    goto :goto_4

    :cond_4
    invoke-interface {v15, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_4
    const/4 v12, 0x7

    .line 366
    invoke-interface {v15, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_5

    :goto_5
    move-object v12, v8

    goto :goto_6

    :cond_5
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    goto :goto_5

    :goto_6
    const/16 v8, 0x8

    .line 367
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v4, :cond_6

    const/4 v13, 0x1

    goto :goto_7

    :cond_6
    const/4 v13, 0x0

    :goto_7
    const/16 v8, 0x9

    .line 368
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-ne v15, v4, :cond_7

    const/4 v0, 0x1

    :cond_7
    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move v11, v13

    move v12, v0

    .line 358
    invoke-interface/range {v1 .. v12}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator;->create(JILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)Lorg/sufficientlysecure/keychain/UserPacketsModel;

    move-result-object v15

    return-object v15

    const-string v16, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Mapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel;"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
