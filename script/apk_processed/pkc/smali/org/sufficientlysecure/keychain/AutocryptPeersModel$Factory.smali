.class public final Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;
.super Ljava/lang/Object;
.source "AutocryptPeersModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/AutocryptPeersModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectAutocryptKeyStatusQuery;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectMasterKeyIdByIdentifierQuery;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectByMasterKeyIdQuery;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectByIdentifiersQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/AutocryptPeersModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final creator:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final gossip_last_seen_keyAdapter:Lcom/squareup/sqldelight/ColumnAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Ljava/util/Date;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final gossip_originAdapter:Lcom/squareup/sqldelight/ColumnAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final last_seenAdapter:Lcom/squareup/sqldelight/ColumnAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Ljava/util/Date;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final last_seen_keyAdapter:Lcom/squareup/sqldelight/ColumnAdapter;
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
.method public constructor <init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;Lcom/squareup/sqldelight/ColumnAdapter;Lcom/squareup/sqldelight/ColumnAdapter;Lcom/squareup/sqldelight/ColumnAdapter;Lcom/squareup/sqldelight/ColumnAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator<",
            "TT;>;",
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Ljava/util/Date;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Ljava/util/Date;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Ljava/util/Date;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 199
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->creator:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;

    .line 201
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->last_seenAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    .line 202
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->last_seen_keyAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    .line 203
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->gossip_last_seen_keyAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    .line 204
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->gossip_originAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;---><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;Lcom/squareup/sqldelight/ColumnAdapter;Lcom/squareup/sqldelight/ColumnAdapter;Lcom/squareup/sqldelight/ColumnAdapter;Lcom/squareup/sqldelight/ColumnAdapter;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public selectAutocryptKeyStatus(Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 226
    new-instance v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectAutocryptKeyStatusQuery;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectAutocryptKeyStatusQuery;-><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;--->selectAutocryptKeyStatus(Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectAutocryptKeyStatusMapper(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusModel<",
            "TT;>;>(",
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator<",
            "TT;TR;>;)",
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper<",
            "TT;TR;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 251
    new-instance v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;-><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;--->selectAutocryptKeyStatusMapper(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectByIdentifiers(Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 210
    new-instance v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectByIdentifiersQuery;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectByIdentifiersQuery;-><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;--->selectByIdentifiers(Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectByIdentifiersMapper()Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper<",
            "TT;>;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 231
    new-instance v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;-><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;--->selectByIdentifiersMapper()Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectByMasterKeyId(Ljava/lang/Long;)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 215
    new-instance v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectByMasterKeyIdQuery;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectByMasterKeyIdQuery;-><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;Ljava/lang/Long;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;--->selectByMasterKeyId(Ljava/lang/Long;)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectByMasterKeyIdMapper()Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper<",
            "TT;>;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 236
    new-instance v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;-><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;--->selectByMasterKeyIdMapper()Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectMasterKeyIdByIdentifier(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 220
    new-instance v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectMasterKeyIdByIdentifierQuery;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectMasterKeyIdByIdentifierQuery;-><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;Ljava/lang/String;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;--->selectMasterKeyIdByIdentifier(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectMasterKeyIdByIdentifierMapper()Lcom/squareup/sqldelight/RowMapper;
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

    .line 240
    new-instance v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$1;-><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;--->selectMasterKeyIdByIdentifierMapper()Lcom/squareup/sqldelight/RowMapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
