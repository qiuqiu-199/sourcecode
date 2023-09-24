.class public final Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;
.super Ljava/lang/Object;
.source "KeyMetadataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeyMetadataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$SelectFingerprintsForKeysOlderThanQuery;,
        Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$SelectByMasterKeyIdQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/KeyMetadataModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final creator:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Creator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final last_updatedAdapter:Lcom/squareup/sqldelight/ColumnAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Ljava/util/Date;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/KeyMetadataModel$Creator;Lcom/squareup/sqldelight/ColumnAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Creator<",
            "TT;>;",
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Ljava/util/Date;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 78
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;->creator:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Creator;

    .line 80
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;->last_updatedAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;---><init>(Lorg/sufficientlysecure/keychain/KeyMetadataModel$Creator;Lcom/squareup/sqldelight/ColumnAdapter;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public selectByMasterKeyId(Ljava/lang/Long;)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 85
    new-instance v0, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$SelectByMasterKeyIdQuery;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$SelectByMasterKeyIdQuery;-><init>(Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;Ljava/lang/Long;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;--->selectByMasterKeyId(Ljava/lang/Long;)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectByMasterKeyIdMapper()Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper<",
            "TT;>;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 95
    new-instance v0, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;-><init>(Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;--->selectByMasterKeyIdMapper()Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectFingerprintsForKeysOlderThan(Ljava/util/Date;)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 90
    new-instance v0, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$SelectFingerprintsForKeysOlderThanQuery;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$SelectFingerprintsForKeysOlderThanQuery;-><init>(Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;Ljava/util/Date;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;--->selectFingerprintsForKeysOlderThan(Ljava/util/Date;)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectFingerprintsForKeysOlderThanMapper()Lcom/squareup/sqldelight/RowMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/sqldelight/RowMapper<",
            "[B>;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 99
    new-instance v0, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$1;-><init>(Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;--->selectFingerprintsForKeysOlderThanMapper()Lcom/squareup/sqldelight/RowMapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
