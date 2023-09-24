.class public interface abstract Lorg/sufficientlysecure/keychain/UserPacketsModel;
.super Ljava/lang/Object;
.source "UserPacketsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$Mapper;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$Creator;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusCreator;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusModel;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeMapper;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeCreator;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectSpecificUserAttributeModel;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdCreator;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdModel;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationMapper;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationCreator;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationModel;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdCreator;,
        Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdModel;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_DATA:Ljava/lang/String; = "attribute_data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMMENT:Ljava/lang/String; = "comment"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS user_packets(\n    master_key_id INTEGER NOT NULL,\n    rank INTEGER NOT NULL,\n    type INTEGER,\n    user_id TEXT,\n    name TEXT,\n    email TEXT,\n    comment TEXT,\n    attribute_data BLOB,\n    is_primary INTEGER NOT NULL,\n    is_revoked INTEGER NOT NULL,\n    PRIMARY KEY(master_key_id, rank),\n    FOREIGN KEY(master_key_id) REFERENCES keyrings_public(master_key_id) ON DELETE CASCADE\n)"

.field public static final EMAIL:Ljava/lang/String; = "email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IS_PRIMARY:Ljava/lang/String; = "is_primary"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IS_REVOKED:Ljava/lang/String; = "is_revoked"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MASTER_KEY_ID:Ljava/lang/String; = "master_key_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAME:Ljava/lang/String; = "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RANK:Ljava/lang/String; = "rank"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "user_packets"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UIDSTATUS:Ljava/lang/String; = "CREATE VIEW uidStatus AS\n    SELECT user_packets.email, MIN(certs.verified) AS key_status_int, user_packets.user_id, user_packets.master_key_id, COUNT(DISTINCT user_packets.master_key_id) AS candidates\n    FROM user_packets\n        JOIN validMasterKeys USING (master_key_id)\n        LEFT JOIN certs ON (certs.master_key_id = user_packets.master_key_id AND certs.rank = user_packets.rank AND certs.verified > 0)\n    WHERE user_packets.email IS NOT NULL\n    GROUP BY user_packets.email"

.field public static final UIDSTATUS_VIEW_NAME:Ljava/lang/String; = "uidStatus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_ID:Ljava/lang/String; = "user_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract attribute_data()[B
.end method

.method public abstract comment()Ljava/lang/String;
.end method

.method public abstract email()Ljava/lang/String;
.end method

.method public abstract is_primary()Z
.end method

.method public abstract is_revoked()Z
.end method

.method public abstract master_key_id()J
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract rank()I
.end method

.method public abstract type()Ljava/lang/Long;
.end method

.method public abstract user_id()Ljava/lang/String;
.end method
