.class public interface abstract Lorg/sufficientlysecure/keychain/KeysModel;
.super Ljava/lang/Object;
.source "KeysModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByKeyId;,
        Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;,
        Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;,
        Lorg/sufficientlysecure/keychain/KeysModel$Factory;,
        Lorg/sufficientlysecure/keychain/KeysModel$Mapper;,
        Lorg/sufficientlysecure/keychain/KeysModel$Creator;,
        Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;,
        Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;,
        Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;,
        Lorg/sufficientlysecure/keychain/KeysModel$ValidMasterKeysCreator;,
        Lorg/sufficientlysecure/keychain/KeysModel$ValidMasterKeysModel;,
        Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdMapper;,
        Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator;,
        Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdModel;
    }
.end annotation


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "algorithm"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAN_AUTHENTICATE:Ljava/lang/String; = "can_authenticate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAN_CERTIFY:Ljava/lang/String; = "can_certify"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAN_ENCRYPT:Ljava/lang/String; = "can_encrypt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAN_SIGN:Ljava/lang/String; = "can_sign"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS keys (\n    master_key_id INTEGER NOT NULL,\n    rank INTEGER NOT NULL,\n    key_id INTEGER NOT NULL,\n    key_size INTEGER,\n    key_curve_oid TEXT,\n    algorithm INTEGER NOT NULL,\n    fingerprint BLOB NOT NULL,\n    can_certify INTEGER NOT NULL,\n    can_sign INTEGER NOT NULL,\n    can_encrypt INTEGER NOT NULL,\n    can_authenticate INTEGER NOT NULL,\n    is_revoked INTEGER NOT NULL,\n    has_secret INTEGER NOT NULL DEFAULT 0,\n    is_secure INTEGER NOT NULL,\n    creation INTEGER NOT NULL,\n    expiry INTEGER,\n    PRIMARY KEY(master_key_id, rank),\n    FOREIGN KEY(master_key_id) REFERENCES\n    keyrings_public(master_key_id) ON DELETE CASCADE\n)"

.field public static final CREATION:Ljava/lang/String; = "creation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXPIRY:Ljava/lang/String; = "expiry"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FINGERPRINT:Ljava/lang/String; = "fingerprint"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HAS_SECRET:Ljava/lang/String; = "has_secret"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IS_REVOKED:Ljava/lang/String; = "is_revoked"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IS_SECURE:Ljava/lang/String; = "is_secure"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_CURVE_OID:Ljava/lang/String; = "key_curve_oid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_ID:Ljava/lang/String; = "key_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_SIZE:Ljava/lang/String; = "key_size"
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

.field public static final TABLE_NAME:Ljava/lang/String; = "keys"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNIFIEDKEYVIEW:Ljava/lang/String; = "CREATE VIEW unifiedKeyView AS\n    SELECT keys.master_key_id, keys.fingerprint, MIN(user_packets.rank), user_packets.user_id, user_packets.name, user_packets.email, user_packets.comment, keys.creation, keys.expiry, keys.is_revoked, keys.is_secure, keys.can_certify, certs.verified,\n        (EXISTS (SELECT * FROM user_packets AS dups WHERE dups.master_key_id != keys.master_key_id AND dups.rank = 0 AND dups.name = user_packets.name COLLATE NOCASE AND dups.email = user_packets.email COLLATE NOCASE )) AS has_duplicate_int,\n        (EXISTS (SELECT * FROM keys AS k WHERE k.master_key_id = keys.master_key_id AND k.has_secret != 0 )) AS has_any_secret_int,\n        (SELECT key_id FROM keys AS k WHERE k.master_key_id = keys.master_key_id AND k.can_encrypt != 0 LIMIT 1) AS has_encrypt_key_int,\n        (SELECT key_id FROM keys AS k WHERE k.master_key_id = keys.master_key_id AND k.can_sign != 0 LIMIT 1) AS has_sign_key_int,\n        (SELECT key_id FROM keys AS k WHERE k.master_key_id = keys.master_key_id AND k.can_authenticate != 0 LIMIT 1) AS has_auth_key_int,\n        GROUP_CONCAT(DISTINCT aTI.package_name) AS autocrypt_package_names_csv,\n        GROUP_CONCAT(user_packets.user_id, \'|||\') AS user_id_list\n    FROM keys\n         INNER JOIN user_packets ON ( keys.master_key_id = user_packets.master_key_id AND user_packets.type IS NULL AND (user_packets.rank = 0 OR user_packets.is_revoked = 0))\n         LEFT JOIN certs ON ( keys.master_key_id = certs.master_key_id AND certs.verified = 1 )\n         LEFT JOIN autocrypt_peers AS aTI ON ( aTI.master_key_id = keys.master_key_id )\n    WHERE keys.rank = 0\n    GROUP BY keys.master_key_id"

.field public static final UNIFIEDKEYVIEW_VIEW_NAME:Ljava/lang/String; = "unifiedKeyView"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VALIDKEYSVIEW:Ljava/lang/String; = "CREATE VIEW validMasterKeys AS\nSELECT master_key_id, rank, key_id, key_size, key_curve_oid, algorithm, fingerprint, can_certify, can_sign, can_encrypt, can_authenticate, is_revoked, has_secret, is_secure, creation, expiry\n    FROM keys\n    WHERE rank = 0 AND is_revoked = 0 AND is_secure = 1 AND (expiry IS NULL OR expiry >= strftime(\'%s\', \'now\'))"

.field public static final VALIDMASTERKEYS_VIEW_NAME:Ljava/lang/String; = "validMasterKeys"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract algorithm()I
.end method

.method public abstract can_authenticate()Z
.end method

.method public abstract can_certify()Z
.end method

.method public abstract can_encrypt()Z
.end method

.method public abstract can_sign()Z
.end method

.method public abstract creation()J
.end method

.method public abstract expiry()Ljava/lang/Long;
.end method

.method public abstract fingerprint()[B
.end method

.method public abstract has_secret()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;
.end method

.method public abstract is_revoked()Z
.end method

.method public abstract is_secure()Z
.end method

.method public abstract key_curve_oid()Ljava/lang/String;
.end method

.method public abstract key_id()J
.end method

.method public abstract key_size()Ljava/lang/Integer;
.end method

.method public abstract master_key_id()J
.end method

.method public abstract rank()J
.end method
