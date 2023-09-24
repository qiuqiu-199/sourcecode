.class public final Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;
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
    name = "UidStatusMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final creator:Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 326
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;->creator:Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;---><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 323
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusModel;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 333
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;->creator:Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;

    const/4 v1, 0x0

    .line 334
    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    .line 335
    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    const/4 v4, 0x2

    .line 336
    invoke-interface {v9, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const/4 v4, 0x3

    .line 337
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x4

    .line 338
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 333
    invoke-interface/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;->create(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JJ)Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusModel;

    move-result-object v9

    return-object v9

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusModel;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
