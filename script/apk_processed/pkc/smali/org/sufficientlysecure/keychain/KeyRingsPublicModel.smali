.class public interface abstract Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;
.super Ljava/lang/Object;
.source "KeyRingsPublicModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$DeleteByMasterKeyId;,
        Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;,
        Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;,
        Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;,
        Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS keyrings_public (\n    master_key_id INTEGER NOT NULL PRIMARY KEY,\n    key_ring_data BLOB NULL\n)"

.field public static final KEY_RING_DATA:Ljava/lang/String; = "key_ring_data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MASTER_KEY_ID:Ljava/lang/String; = "master_key_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "keyrings_public"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract key_ring_data()[B
.end method

.method public abstract master_key_id()J
.end method
