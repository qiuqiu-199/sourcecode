.class public final Lorg/sufficientlysecure/keychain/Constants$Pref;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pref"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/Constants$Pref$ProxyType;,
        Lorg/sufficientlysecure/keychain/Constants$Pref$Theme;
    }
.end annotation


# static fields
.field public static final ANALYTICS_PREFS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CACHED_CONSOLIDATE:Ljava/lang/String; = "cachedConsolidate"

.field public static final ENABLE_WIFI_SYNC_ONLY:Ljava/lang/String; = "enableWifiSyncOnly"

.field public static final ENCRYPT_FILENAMES:Ljava/lang/String; = "encryptFilenames"

.field public static final EXPERIMENTAL_ENABLE_KEYBASE:Ljava/lang/String; = "experimentalEnableKeybase"

.field public static final EXPERIMENTAL_ENABLE_LINKED_IDENTITIES:Ljava/lang/String; = "experimentalEnableLinkedIdentities"

.field public static final EXPERIMENTAL_SMARTPGP_AUTHORITIES:Ljava/lang/String; = "smartpgp_authorities"

.field public static final EXPERIMENTAL_SMARTPGP_VERIFY_AUTHORITY:Ljava/lang/String; = "smartpgp_authorities_pref"

.field public static final EXPERIMENTAL_USB_ALLOW_UNTESTED:Ljava/lang/String; = "experimentalUsbAllowUntested"

.field public static final FILE_SELF_ENCRYPT:Ljava/lang/String; = "fileSelfEncrypt"

.field public static final FILE_USE_COMPRESSION:Ljava/lang/String; = "useFileCompression"

.field public static final FIRST_TIME_APP:Ljava/lang/String; = "firstTimeApp"

.field public static final FIRST_TIME_WIZARD:Ljava/lang/String; = "firstTime"

.field public static final KEY_ANALYTICS_ASKED_POLITELY:Ljava/lang/String; = "analytics_asked"

.field public static final KEY_ANALYTICS_CONSENT:Ljava/lang/String; = "analytics_consent"

.field public static final KEY_ANALYTICS_LAST_ASKED:Ljava/lang/String; = "analytics_last_asked"

.field public static final KEY_SERVERS:Ljava/lang/String; = "keyServers"

.field public static final KEY_SIGNATURES_TABLE_INITIALIZED:Ljava/lang/String; = "key_signatures_table_initialized"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final PASSPHRASE_CACHE_LAST_TTL:Ljava/lang/String; = "passphraseCacheLastTtl"

.field public static final PASSPHRASE_CACHE_SUBS:Ljava/lang/String; = "passphraseCacheSubs"

.field public static final PREF_VERSION:Ljava/lang/String; = "keyServersDefaultVersion"

.field public static final PROXY_HOST:Ljava/lang/String; = "proxyHost"

.field public static final PROXY_PORT:Ljava/lang/String; = "proxyPort"

.field public static final PROXY_TYPE:Ljava/lang/String; = "proxyType"

.field public static final SEARCH_KEYBASE:Ljava/lang/String; = "search_keybase_pref"

.field public static final SEARCH_KEYSERVER:Ljava/lang/String; = "search_keyserver_pref"

.field public static final SEARCH_WEB_KEY_DIRECTORY:Ljava/lang/String; = "search_wkd_pref"

.field public static final SYNC_CONTACTS:Ljava/lang/String; = "syncContacts"

.field public static final SYNC_KEYSERVER:Ljava/lang/String; = "syncKeyserver"

.field public static final SYNC_WORK_UUID:Ljava/lang/String; = "syncWorkUuid"

.field public static final TEXT_SELF_ENCRYPT:Ljava/lang/String; = "textSelfEncrypt"

.field public static final TEXT_USE_COMPRESSION:Ljava/lang/String; = "useTextCompression"

.field public static final THEME:Ljava/lang/String; = "theme"

.field public static final USE_ARMOR:Ljava/lang/String; = "useArmor"

.field public static final USE_NORMAL_PROXY:Ljava/lang/String; = "useNormalProxy"

.field public static final USE_NUMKEYPAD_FOR_SECURITY_TOKEN_PIN:Ljava/lang/String; = "useNumKeypadForYubikeyPin"

.field public static final USE_TOR_PROXY:Ljava/lang/String; = "useTorProxy"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x13

    .line 180
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "useNormalProxy"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "useTorProxy"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "syncContacts"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "syncKeyserver"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "enableWifiSyncOnly"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "experimentalEnableKeybase"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "experimentalEnableLinkedIdentities"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "experimentalUsbAllowUntested"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "passphraseCacheSubs"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "search_keyserver_pref"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "search_keybase_pref"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "search_wkd_pref"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "useTextCompression"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "textSelfEncrypt"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "useFileCompression"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "fileSelfEncrypt"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "useArmor"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "useNumKeypadForYubikeyPin"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "encryptFilenames"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/Constants$Pref;->ANALYTICS_PREFS:Ljava/util/List;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/Constants$Pref;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 122
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/Constants$Pref;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
