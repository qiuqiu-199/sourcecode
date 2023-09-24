.class public interface abstract Lorg/sufficientlysecure/keychain/AutocryptPeersModel;
.super Ljava/lang/Object;
.source "AutocryptPeersModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$InsertPeer;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateGossipKey;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateKey;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByMasterKeyId;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByIdentifier;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;,
        Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusModel;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS autocrypt_peers (\n    package_name TEXT NOT NULL,\n    identifier TEXT NOT NULL,\n    last_seen INTEGER NULL,\n    last_seen_key INTEGER NULL,\n    is_mutual INTEGER NOT NULL DEFAULT 0,\n    master_key_id INTEGER NULL,\n    gossip_master_key_id INTEGER NULL,\n    gossip_last_seen_key INTEGER NULL,\n    gossip_origin INTEGER NULL,\n    PRIMARY KEY(package_name, identifier),\n    FOREIGN KEY(package_name) REFERENCES api_apps (package_name) ON DELETE CASCADE\n)"

.field public static final GOSSIP_LAST_SEEN_KEY:Ljava/lang/String; = "gossip_last_seen_key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOSSIP_MASTER_KEY_ID:Ljava/lang/String; = "gossip_master_key_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOSSIP_ORIGIN:Ljava/lang/String; = "gossip_origin"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IDENTIFIER:Ljava/lang/String; = "identifier"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IS_MUTUAL:Ljava/lang/String; = "is_mutual"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAST_SEEN:Ljava/lang/String; = "last_seen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAST_SEEN_KEY:Ljava/lang/String; = "last_seen_key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MASTER_KEY_ID:Ljava/lang/String; = "master_key_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "autocrypt_peers"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract gossip_last_seen_key()Ljava/util/Date;
.end method

.method public abstract gossip_master_key_id()Ljava/lang/Long;
.end method

.method public abstract gossip_origin()Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;
.end method

.method public abstract identifier()Ljava/lang/String;
.end method

.method public abstract is_mutual()Z
.end method

.method public abstract last_seen()Ljava/util/Date;
.end method

.method public abstract last_seen_key()Ljava/util/Date;
.end method

.method public abstract master_key_id()Ljava/lang/Long;
.end method

.method public abstract package_name()Ljava/lang/String;
.end method
