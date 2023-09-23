.class public Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;
.super Ljava/lang/Object;
.source "DatabaseNotifyManager.java"


# static fields
.field private static final URI_APPS:Landroid/net/Uri;

.field private static final URI_KEYS:Landroid/net/Uri;


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://org.sufficientlysecure.keychain.provider/keys"

    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->URI_KEYS:Landroid/net/Uri;

    const-string v0, "content://org.sufficientlysecure.keychain.provider/apps"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->URI_APPS:Landroid/net/Uri;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->contentResolver:Landroid/content/ContentResolver;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;---><init>(Landroid/content/ContentResolver;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;
    .locals 4

    move-object/16 v1, p0

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 19
    new-instance v0, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;-><init>(Landroid/content/ContentResolver;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;--->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getNotifyUriAllApps()Landroid/net/Uri;
    .locals 4

    .line 65
    sget-object v0, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->URI_APPS:Landroid/net/Uri;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;--->getNotifyUriAllApps()Landroid/net/Uri;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getNotifyUriAllKeys()Landroid/net/Uri;
    .locals 4

    .line 57
    sget-object v0, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->URI_KEYS:Landroid/net/Uri;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;--->getNotifyUriAllKeys()Landroid/net/Uri;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getNotifyUriMasterKeyId(J)Landroid/net/Uri;
    .locals 4

    move-wide/16 v1, p0

    .line 61
    sget-object v0, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->URI_KEYS:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;--->getNotifyUriMasterKeyId(J)Landroid/net/Uri;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getNotifyUriPackageName(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    move-object/16 v1, p0

    .line 69
    sget-object v0, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->URI_APPS:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;--->getNotifyUriPackageName(Ljava/lang/String;)Landroid/net/Uri;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public notifyAllKeysChange()V
    .locals 6

    move-object/16 v3, p0

    .line 27
    invoke-static {}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->getNotifyUriAllKeys()Landroid/net/Uri;

    move-result-object v0

    .line 28
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;--->notifyAllKeysChange()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public notifyApiAppChange(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 52
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->getNotifyUriPackageName(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 53
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;--->notifyApiAppChange(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public notifyAutocryptDelete(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 37
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->getNotifyUriMasterKeyId(J)Landroid/net/Uri;

    move-result-object v2

    .line 38
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->contentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;--->notifyAutocryptDelete(Ljava/lang/String;Ljava/lang/Long;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public notifyAutocryptUpdate(Ljava/lang/String;J)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-wide/16 v2, p2

    .line 42
    invoke-static {v2, p0}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->getNotifyUriMasterKeyId(J)Landroid/net/Uri;

    move-result-object v1

    .line 43
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->contentResolver:Landroid/content/ContentResolver;

    const/4 p0, 0x0

    invoke-virtual {v2, v1, p0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;--->notifyAutocryptUpdate(Ljava/lang/String;J)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public notifyKeyChange(J)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 32
    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->getNotifyUriMasterKeyId(J)Landroid/net/Uri;

    move-result-object v2

    .line 33
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->contentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;--->notifyKeyChange(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public notifyKeyMetadataChange(J)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 47
    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->getNotifyUriMasterKeyId(J)Landroid/net/Uri;

    move-result-object v2

    .line 48
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->contentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;--->notifyKeyMetadataChange(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
