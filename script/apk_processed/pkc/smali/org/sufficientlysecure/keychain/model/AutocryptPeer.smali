.class public abstract Lorg/sufficientlysecure/keychain/model/AutocryptPeer;
.super Ljava/lang/Object;
.source "AutocryptPeer.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/AutocryptPeersModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;,
        Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;
    }
.end annotation


# static fields
.field public static final FACTORY:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory<",
            "Lorg/sufficientlysecure/keychain/model/AutocryptPeer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_STATUS_MAPPER:Lcom/squareup/sqldelight/RowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/sqldelight/RowMapper<",
            "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final PEER_MAPPER:Lcom/squareup/sqldelight/RowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/sqldelight/RowMapper<",
            "Lorg/sufficientlysecure/keychain/model/AutocryptPeer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 16
    new-instance v6, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;

    sget-object v2, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;->DATE_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;

    sget-object v3, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;->DATE_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;

    sget-object v4, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;->DATE_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;

    sget-object v5, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;->GOSSIP_ORIGIN_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;-><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;Lcom/squareup/sqldelight/ColumnAdapter;Lcom/squareup/sqldelight/ColumnAdapter;Lcom/squareup/sqldelight/ColumnAdapter;Lcom/squareup/sqldelight/ColumnAdapter;)V

    sput-object v6, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->FACTORY:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    .line 20
    sget-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->FACTORY:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->selectByIdentifiersMapper()Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->PEER_MAPPER:Lcom/squareup/sqldelight/RowMapper;

    .line 21
    sget-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->FACTORY:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$$Lambda$1;->$instance:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;

    .line 22
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->selectAutocryptKeyStatusMapper(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->KEY_STATUS_MAPPER:Lcom/squareup/sqldelight/RowMapper;

    return-void

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer;---><clinit>()V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
