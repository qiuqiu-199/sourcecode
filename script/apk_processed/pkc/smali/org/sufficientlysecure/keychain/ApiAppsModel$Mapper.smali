.class public final Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;
.super Ljava/lang/Object;
.source "ApiAppsModel.java"

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ApiAppsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/ApiAppsModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final apiAppsModelFactory:Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;->apiAppsModelFactory:Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;---><init>(Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/ApiAppsModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/ApiAppsModel;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 59
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;->apiAppsModelFactory:Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;->creator:Lorg/sufficientlysecure/keychain/ApiAppsModel$Creator;

    const/4 v1, 0x0

    .line 60
    invoke-interface {v7, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    .line 61
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    .line 62
    invoke-interface {v7, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 59
    :goto_1
    invoke-interface {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Creator;->create(Ljava/lang/Long;Ljava/lang/String;[B)Lorg/sufficientlysecure/keychain/ApiAppsModel;

    move-result-object v7

    return-object v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/ApiAppsModel;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
