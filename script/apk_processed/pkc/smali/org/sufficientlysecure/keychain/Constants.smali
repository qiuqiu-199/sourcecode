.class public final Lorg/sufficientlysecure/keychain/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/Constants$key;,
        Lorg/sufficientlysecure/keychain/Constants$Defaults;,
        Lorg/sufficientlysecure/keychain/Constants$Orbot;,
        Lorg/sufficientlysecure/keychain/Constants$Pref;,
        Lorg/sufficientlysecure/keychain/Constants$NotificationIds;,
        Lorg/sufficientlysecure/keychain/Constants$Path;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "OpenKeychain"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "org.sufficientlysecure.keychain.account"

.field public static final BOUNCY_CASTLE_PROVIDER_NAME:Ljava/lang/String; = "BC"

.field public static final CLIPBOARD_LABEL:Ljava/lang/String; = "Keychain"

.field public static final CUSTOM_CONTACT_DATA_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.org.sufficientlysecure.keychain.key"

.field public static final DEBUG:Z = false

.field public static final DEBUG_EXPLAIN_QUERIES:Z = false

.field public static final DEBUG_KEYSERVER_SYNC:Z = false

.field public static final DEBUG_LOG_DB_QUERIES:Z = false

.field public static final DEBUG_SYNC_REMOVE_CONTACTS:Z = false

.field public static final DECRYPT_DATA:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.DECRYPT_DATA"

.field private static final ELEN:I = 0x11

.field public static final ENCRYPT_DATA:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.ENCRYPT_DATA"

.field public static final ENCRYPT_EXTRA_ASCII_ARMOR:Ljava/lang/String; = "org.sufficientlysecure.keychain.EXTRA_ASCII_ARMOR"

.field public static final ENCRYPT_EXTRA_TEXT:Ljava/lang/String; = "org.sufficientlysecure.keychain.EXTRA_TEXT"

.field public static final ENCRYPT_TEXT:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.ENCRYPT_TEXT"

.field public static final EXTRA_PREFIX:Ljava/lang/String; = "org.sufficientlysecure.keychain."

.field public static final FILE_BACKUP_PREFIX:Ljava/lang/String; = "backup_"

.field public static final FILE_ENCRYPTED_BACKUP_PREFIX:Ljava/lang/String; = "backup_"

.field public static final FILE_EXTENSION_ASC:Ljava/lang/String; = ".asc"

.field public static final FILE_EXTENSION_BACKUP_PUBLIC:Ljava/lang/String; = ".pub.asc"

.field public static final FILE_EXTENSION_BACKUP_SECRET:Ljava/lang/String; = ".sec.asc"

.field public static final FILE_EXTENSION_ENCRYPTED_BACKUP_PUBLIC:Ljava/lang/String; = ".pub.pgp"

.field public static final FILE_EXTENSION_ENCRYPTED_BACKUP_SECRET:Ljava/lang/String; = ".sec.pgp"

.field public static final FILE_EXTENSION_PGP_ALTERNATE:Ljava/lang/String; = ".gpg"

.field public static final FILE_EXTENSION_PGP_MAIN:Ljava/lang/String; = ".pgp"

.field public static final FINGERPRINT_SCHEME:Ljava/lang/String; = "openpgp4fpr"

.field public static final IMPORT_EXTRA_KEY_EXTRA_KEY_BYTES:Ljava/lang/String; = "org.sufficientlysecure.keychain.EXTRA_KEY_BYTES"

.field public static final IMPORT_KEY:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.IMPORT_KEY"

.field public static final IMPORT_KEY_FROM_KEYSERVER:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_KEYSERVER"

.field public static final IMPORT_KEY_FROM_KEYSERVER_EXTRA_FINGERPRINT:Ljava/lang/String; = "org.sufficientlysecure.keychain.EXTRA_FINGERPRINT"

.field public static final IMPORT_KEY_FROM_KEYSERVER_EXTRA_QUERY:Ljava/lang/String; = "org.sufficientlysecure.keychain.EXTRA_QUERY"

.field public static final IMPORT_KEY_FROM_QR_CODE:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_QR_CODE"

.field public static final INTENT_PREFIX:Ljava/lang/String; = "org.sufficientlysecure.keychain.action."

.field public static final IS_RUNNING_UNITTEST:Z

.field public static final MIME_TYPE_ENCRYPTED:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_TYPE_ENCRYPTED_ALTERNATE:Ljava/lang/String; = "application/pgp-message"

.field public static final MIME_TYPE_KEYS:Ljava/lang/String; = "application/pgp-keys"

.field public static final MIME_TYPE_TEXT:Ljava/lang/String; = "text/plain"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "org.sufficientlysecure.keychain"

.field public static final PROVIDER_AUTHORITY:Ljava/lang/String; = "org.sufficientlysecure.keychain.provider"

.field public static final SAFESLINGER_SERVER:Ljava/lang/String; = "slinger-openpgp.appspot.com"

.field public static final SECURITY_TOKEN_V2_AUTH:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

.field public static final SECURITY_TOKEN_V2_DEC:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

.field public static final SECURITY_TOKEN_V2_SIGN:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

.field public static final SKT_SCHEME:Ljava/lang/String; = "OPGPSKT"

.field public static final TAG:Ljava/lang/String; = "Keychain"

.field public static final TEMPFILE_TTL:I = 0x5265c00

.field public static final TEMP_FILE_PROVIDER_AUTHORITY:Ljava/lang/String; = "org.sufficientlysecure.keychain.tempstorage"

.field public static final TEXT_LENGTH_LIMIT:I = 0xc800


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    invoke-static {}, Lorg/sufficientlysecure/keychain/Constants;->isRunningUnitTest()Z

    move-result v0

    sput-boolean v0, Lorg/sufficientlysecure/keychain/Constants;->IS_RUNNING_UNITTEST:Z

    .line 223
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->CRT_WITH_MODULUS:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    const/16 v2, 0x11

    const/16 v3, 0x800

    invoke-direct {v0, v3, v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;-><init>(IILorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/Constants;->SECURITY_TOKEN_V2_SIGN:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    .line 224
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->CRT_WITH_MODULUS:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    invoke-direct {v0, v3, v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;-><init>(IILorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/Constants;->SECURITY_TOKEN_V2_DEC:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    .line 225
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->CRT_WITH_MODULUS:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    invoke-direct {v0, v3, v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;-><init>(IILorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/Constants;->SECURITY_TOKEN_V2_AUTH:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/Constants;---><clinit>()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/Constants;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static addDefaultSubkeys(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)V
    .locals 11

    move-object/16 v8, p0

    .line 213
    sget-object v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->RSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    const/16 v1, 0xc00

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    .line 213
    invoke-static {v0, v2, v6, v7, v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->createSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;ILjava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;)V

    .line 215
    sget-object v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->RSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xc

    .line 215
    invoke-static {v0, v1, v6, v3, v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->createSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;ILjava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;)V

    return-void

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/Constants;--->addDefaultSubkeys(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static isRunningUnitTest()Z
    .locals 4

    :try_start_0
    const-string v0, "org.sufficientlysecure.keychain.KeychainTestRunner"

    .line 229
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/Constants;--->isRunningUnitTest()Z"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
