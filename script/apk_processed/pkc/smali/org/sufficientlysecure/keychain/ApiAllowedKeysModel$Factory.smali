.class public final Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;
.super Ljava/lang/Object;
.source "ApiAllowedKeysModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory$GetAllowedKeysQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final creator:Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Creator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Creator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Creator<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 72
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;->creator:Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Creator;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;---><init>(Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Creator;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getAllowedKeys(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 78
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory$GetAllowedKeysQuery;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory$GetAllowedKeysQuery;-><init>(Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;Ljava/lang/String;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;--->getAllowedKeys(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAllowedKeysMapper()Lcom/squareup/sqldelight/RowMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/sqldelight/RowMapper<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 82
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory$1;-><init>(Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;--->getAllowedKeysMapper()Lcom/squareup/sqldelight/RowMapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
