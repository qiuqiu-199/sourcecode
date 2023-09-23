.class public final Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Mapper;
.super Ljava/lang/Object;
.source "ApiAllowedKeysModel.java"

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final apiAllowedKeysModelFactory:Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Mapper;->apiAllowedKeysModelFactory:Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Mapper;---><init>(Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 61
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Mapper;->apiAllowedKeysModelFactory:Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;->creator:Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Creator;

    const/4 v1, 0x0

    .line 62
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    .line 63
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1
    const/4 v2, 0x2

    .line 64
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-interface {v0, v1, v3, v6}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Creator;->create(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel;

    move-result-object v6

    return-object v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Mapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
