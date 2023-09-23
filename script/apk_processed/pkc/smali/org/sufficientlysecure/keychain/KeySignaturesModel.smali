.class public interface abstract Lorg/sufficientlysecure/keychain/KeySignaturesModel;
.super Ljava/lang/Object;
.source "KeySignaturesModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;,
        Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;,
        Lorg/sufficientlysecure/keychain/KeySignaturesModel$Mapper;,
        Lorg/sufficientlysecure/keychain/KeySignaturesModel$Creator;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS key_signatures (\n    master_key_id INTEGER NOT NULL,\n    signer_key_id INTEGER NOT NULL,\n    PRIMARY KEY(master_key_id, signer_key_id),\n    FOREIGN KEY(master_key_id) REFERENCES keyrings_public(master_key_id) ON DELETE CASCADE\n)"

.field public static final MASTER_KEY_ID:Ljava/lang/String; = "master_key_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGNER_KEY_ID:Ljava/lang/String; = "signer_key_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "key_signatures"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract master_key_id()J
.end method

.method public abstract signer_key_id()J
.end method
