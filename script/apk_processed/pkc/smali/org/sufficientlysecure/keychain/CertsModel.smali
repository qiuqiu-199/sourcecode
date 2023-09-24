.class public interface abstract Lorg/sufficientlysecure/keychain/CertsModel;
.super Ljava/lang/Object;
.source "CertsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;,
        Lorg/sufficientlysecure/keychain/CertsModel$Factory;,
        Lorg/sufficientlysecure/keychain/CertsModel$Mapper;,
        Lorg/sufficientlysecure/keychain/CertsModel$Creator;,
        Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;,
        Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;,
        Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsModel;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS certs(\n    master_key_id INTEGER NOT NULL,\n    rank INTEGER NOT NULL,\n    key_id_certifier INTEGER NOT NULL,\n    type INTEGER NOT NULL,\n    verified INTEGER NOT NULL DEFAULT 0,\n    creation INTEGER NOT NULL,\n    data BLOB NOT NULL,\n    PRIMARY KEY(master_key_id, rank, key_id_certifier),\n    FOREIGN KEY(master_key_id) REFERENCES keyrings_public(master_key_id) ON DELETE CASCADE,\n    FOREIGN KEY(master_key_id, rank) REFERENCES user_packets(master_key_id, rank) ON DELETE CASCADE\n)"

.field public static final CREATION:Ljava/lang/String; = "creation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA:Ljava/lang/String; = "data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_ID_CERTIFIER:Ljava/lang/String; = "key_id_certifier"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MASTER_KEY_ID:Ljava/lang/String; = "master_key_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RANK:Ljava/lang/String; = "rank"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "certs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERIFIED:Ljava/lang/String; = "verified"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract creation()J
.end method

.method public abstract data()[B
.end method

.method public abstract key_id_certifier()J
.end method

.method public abstract master_key_id()J
.end method

.method public abstract rank()J
.end method

.method public abstract type()J
.end method

.method public abstract verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;
.end method
