.class public final Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;
.super Ljava/lang/Object;
.source "KeyRingsPublicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory$SelectByMasterKeyIdQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final creator:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;->creator:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;---><init>(Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public selectAllMasterKeyIds()Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 9

    move-object/16 v6, p0

    .line 67
    new-instance v0, Lcom/squareup/sqldelight/SqlDelightQuery;

    const-string v1, "SELECT master_key_id\n    FROM keyrings_public"

    new-instance v2, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "keyrings_public"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;--->selectAllMasterKeyIds()Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectAllMasterKeyIdsMapper()Lcom/squareup/sqldelight/RowMapper;
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

    .line 79
    new-instance v0, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory$1;-><init>(Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;--->selectAllMasterKeyIdsMapper()Lcom/squareup/sqldelight/RowMapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 75
    new-instance v0, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory$SelectByMasterKeyIdQuery;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory$SelectByMasterKeyIdQuery;-><init>(Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;J)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;--->selectByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectByMasterKeyIdMapper()Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper<",
            "TT;>;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 89
    new-instance v0, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;-><init>(Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;--->selectByMasterKeyIdMapper()Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
