.class public interface abstract Lorg/sufficientlysecure/keychain/KeyMetadataModel;
.super Ljava/lang/Object;
.source "KeyMetadataModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;,
        Lorg/sufficientlysecure/keychain/KeyMetadataModel$DeleteAllLastUpdatedTimes;,
        Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;,
        Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;,
        Lorg/sufficientlysecure/keychain/KeyMetadataModel$Creator;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS key_metadata (\n    master_key_id INTEGER PRIMARY KEY,\n    last_updated INTEGER,\n    seen_on_keyservers INTEGER,\n    FOREIGN KEY(master_key_id) REFERENCES keyrings_public(master_key_id) ON DELETE CASCADE\n)"

.field public static final LAST_UPDATED:Ljava/lang/String; = "last_updated"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MASTER_KEY_ID:Ljava/lang/String; = "master_key_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SEEN_ON_KEYSERVERS:Ljava/lang/String; = "seen_on_keyservers"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "key_metadata"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract last_updated()Ljava/util/Date;
.end method

.method public abstract master_key_id()Ljava/lang/Long;
.end method

.method public abstract seen_on_keyservers()Ljava/lang/Boolean;
.end method
