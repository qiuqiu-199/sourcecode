.class public final Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeMapper;
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
    name = "SelectSpecificUserAttributeMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final creator:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeCreator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeCreator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeCreator<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 285
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeMapper;->creator:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeCreator;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeMapper;---><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeCreator;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 282
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeModel;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v12, p0

    move-object/16 v13, p1

    .line 292
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeMapper;->creator:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeCreator;

    const/4 v1, 0x0

    .line 293
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    .line 294
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x2

    .line 295
    invoke-interface {v13, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    move-object v6, v8

    goto :goto_0

    :cond_0
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    :goto_0
    const/4 v7, 0x3

    .line 296
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v4, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v9, 0x4

    .line 297
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v4, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    const/4 v1, 0x5

    .line 298
    invoke-interface {v13, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v13, v8

    goto :goto_3

    :cond_3
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    :goto_3
    move-wide v1, v2

    move v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v9

    move-object v7, v13

    .line 292
    invoke-interface/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeCreator;->create(JI[BZZLjava/lang/Long;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeModel;

    move-result-object v13

    return-object v13

    const-string v14, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeMapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeModel;"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method