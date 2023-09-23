.class Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;
.super Ljava/lang/Object;
.source "OpenPgpServiceKeyIdExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;,
        Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;,
        Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;
    }
.end annotation


# static fields
.field private static final INDEX_AUTOCRYPT_KEY_STATUS:I = 0x5

.field private static final INDEX_AUTOCRYPT_MASTER_KEY_ID:I = 0x4

.field private static final INDEX_AUTOCRYPT_PEER_STATE:I = 0x6

.field private static final INDEX_EMAIL_ADDRESS:I = 0x0

.field private static final INDEX_MASTER_KEY_ID:I = 0x1

.field private static final INDEX_USER_ID_CANDIDATES:I = 0x3

.field private static final INDEX_USER_ID_STATUS:I = 0x2

.field static final PROJECTION_MAIL_STATUS:[Ljava/lang/String;


# instance fields
.field private final apiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x7

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "uid_master_key_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "uid_key_status"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "uid_candidates"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "autocrypt_master_key_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "autocrypt_key_status"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "autocrypt_peer_state"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->PROJECTION_MAIL_STATUS:[Ljava/lang/String;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 69
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->contentResolver:Landroid/content/ContentResolver;

    .line 71
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->apiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;---><init>(Landroid/content/ContentResolver;Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private combineAutocryptState(II)I
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;--->combineAutocryptState(II)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createDuplicateKeysResult(Landroid/content/Intent;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 339
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->apiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    invoke-virtual {v0, v3, v2, p0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createDeduplicatePendingIntent(Ljava/lang/String;Landroid/content/Intent;Ljava/util/ArrayList;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 342
    new-instance v3, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    sget-object p0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->DUPLICATE:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    const/4 v0, 0x0

    invoke-direct {v3, v2, p0, v0}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;-><init>(Landroid/app/PendingIntent;Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$1;)V

    return-object v3

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;--->createDuplicateKeysResult(Landroid/content/Intent;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createKeysOkResult(Ljava/util/HashSet;ZI)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;ZI)",
            "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;"
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    move/16 v9, p2

    move/16 p0, p3

    .line 326
    new-instance v6, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    sget-object v3, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->OK:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v8

    move v2, v9

    move v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;-><init>(Ljava/util/HashSet;ZLorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;ILorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$1;)V

    return-object v6

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;--->createKeysOkResult(Ljava/util/HashSet;ZI)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createMissingKeysResult(Landroid/content/Intent;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;"
        }
    .end annotation

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 347
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getUnboxedLongArray(Ljava/util/Collection;)[J

    move-result-object v2

    .line 348
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->apiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    const/4 v5, 0x0

    move-object v1, v7

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createSelectPublicKeyPendingIntent(Landroid/content/Intent;[JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Landroid/app/PendingIntent;

    move-result-object v7

    .line 351
    new-instance v8, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    sget-object p0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->MISSING:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    const/4 p1, 0x0

    invoke-direct {v8, v7, p0, p1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;-><init>(Landroid/app/PendingIntent;Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$1;)V

    return-object v8

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;--->createMissingKeysResult(Landroid/content/Intent;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createNoKeysResult()Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;
    .locals 6

    move-object/16 v3, p0

    .line 355
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->NO_KEYS_ERROR:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;-><init>(Landroid/app/PendingIntent;Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$1;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;--->createNoKeysResult()Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createNoKeysResult(Landroid/content/Intent;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;"
        }
    .end annotation

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 331
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getUnboxedLongArray(Ljava/util/Collection;)[J

    move-result-object v2

    .line 332
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->apiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    const/4 v5, 0x0

    move-object v1, v7

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createSelectPublicKeyPendingIntent(Landroid/content/Intent;[JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Landroid/app/PendingIntent;

    move-result-object v7

    .line 335
    new-instance v8, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    sget-object p0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->NO_KEYS:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    const/4 p1, 0x0

    invoke-direct {v8, v7, p0, p1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;-><init>(Landroid/app/PendingIntent;Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$1;)V

    return-object v8

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;--->createNoKeysResult(Landroid/content/Intent;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static getInstance(Landroid/content/ContentResolver;Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 65
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;-><init>(Landroid/content/ContentResolver;Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;--->getInstance(Landroid/content/ContentResolver;Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getStatusMapForQueriedAddresses([Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;",
            ">;"
        }
    .end annotation

    move-object/16 v12, p0

    move-object/16 v13, p1

    move-object/16 v14, p2

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    sget-object v1, Lorg/sufficientlysecure/keychain/provider/KeychainExternalContract$AutocryptStatus;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 190
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->PROJECTION_MAIL_STATUS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v13

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_0

    .line 192
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Internal error, received null cursor!"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 196
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    .line 197
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 199
    invoke-interface {v13, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v6, v4

    goto :goto_1

    :cond_1
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v6, v3

    :goto_1
    const/4 v3, 0x2

    .line 200
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v3, 0x3

    .line 201
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    const/4 v14, 0x4

    .line 204
    invoke-interface {v13, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_3
    move-object v9, v4

    goto :goto_4

    :cond_3
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_3

    :goto_4
    const/4 v14, 0x5

    .line 205
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v14, 0x6

    .line 206
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 208
    new-instance v14, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;

    move-object v5, v14

    invoke-direct/range {v5 .. v11}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;-><init>(Ljava/lang/Long;IZLjava/lang/Long;II)V

    .line 212
    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 215
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v14

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 216
    throw v14

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;--->getStatusMapForQueriedAddresses([Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method returnKeyIdsFromEmails(Landroid/content/Intent;[Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;
    .locals 21

    move-object/16 v18, p0

    move-object/16 v19, p1

    move-object/16 v20, p2

    move-object/16 p0, p3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 105
    array-length v6, v2

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 108
    :goto_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 109
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_9

    .line 114
    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->getStatusMapForQueriedAddresses([Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 118
    array-length v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v11, v10, :cond_7

    aget-object v14, v2, v11

    .line 119
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;

    if-nez v15, :cond_1

    .line 121
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No result for address - shouldn\'t happen!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_1
    invoke-static {v15}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->access$100(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)Ljava/lang/Long;

    move-result-object v16

    const/4 v4, 0x2

    if-eqz v16, :cond_3

    .line 125
    invoke-static {v15}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->access$100(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {v15}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->access$200(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)I

    move-result v14

    if-eq v14, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v12

    .line 132
    :goto_2
    invoke-static {v15}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->access$300(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)I

    move-result v12

    .line 131
    invoke-direct {v0, v13, v12}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->combineAutocryptState(II)I

    move-result v13

    move v12, v4

    goto :goto_3

    .line 137
    :cond_3
    invoke-static {v15}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->access$400(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)Ljava/lang/Long;

    move-result-object v16

    if-eqz v16, :cond_5

    .line 138
    invoke-static {v15}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->access$400(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v13, 0x1e

    .line 141
    invoke-static {v15}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->access$500(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 142
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_4
    invoke-static {v15}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->access$600(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)I

    move-result v14

    if-eq v14, v4, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    .line 152
    :cond_5
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 155
    :cond_7
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v4

    array-length v2, v2

    if-eq v4, v2, :cond_8

    const-string v2, "Number of rows doesn\'t match number of retrieved rows! Probably a bug?"

    .line 156
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    const/4 v2, 0x1

    xor-int/lit8 v5, v12, 0x1

    goto :goto_4

    :cond_9
    const/4 v13, 0x0

    .line 162
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 163
    invoke-direct {v0, v1, v7, v8, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->createMissingKeysResult(Landroid/content/Intent;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    move-result-object v1

    return-object v1

    .line 166
    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 167
    invoke-direct {v0, v1, v3, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->createDuplicateKeysResult(Landroid/content/Intent;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    move-result-object v1

    return-object v1

    .line 170
    :cond_b
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 171
    invoke-direct {v0, v1, v7, v8, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->createNoKeysResult(Landroid/content/Intent;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    move-result-object v1

    return-object v1

    .line 174
    :cond_c
    invoke-direct {v0, v7, v5, v13}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->createKeysOkResult(Ljava/util/HashSet;ZI)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    move-result-object v1

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;--->returnKeyIdsFromEmails(Landroid/content/Intent;[Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method returnKeyIdsFromIntent(Landroid/content/Intent;ZLjava/lang/String;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move/16 v7, p2

    move-object/16 p0, p3

    const-string v0, "key_ids_selected"

    .line 76
    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 80
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const-string p0, "key_ids_selected"

    .line 81
    invoke-virtual {v6, p0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p0, v2

    .line 82
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {v5, v7, v1, v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->createKeysOkResult(Ljava/util/HashSet;ZI)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    move-result-object v7

    goto :goto_2

    :cond_1
    const-string v0, "user_ids"

    .line 85
    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    .line 89
    :cond_2
    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->createNoKeysResult()Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    move-result-object v7

    goto :goto_2

    :cond_3
    :goto_1
    const-string v7, "user_ids"

    .line 86
    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-virtual {v5, v6, v7, p0}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->returnKeyIdsFromEmails(Landroid/content/Intent;[Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    move-result-object v7

    :goto_2
    const-string p0, "key_ids"

    .line 93
    invoke-virtual {v6, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 94
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "key_ids"

    .line 95
    invoke-virtual {v6, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    array-length v0, v6

    :goto_3
    if-ge v1, v0, :cond_4

    aget-wide v2, v6, v1

    .line 96
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 98
    :cond_4
    invoke-static {v7, p0}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->access$000(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;Ljava/util/HashSet;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    move-result-object v7

    :cond_5
    return-object v7

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;--->returnKeyIdsFromIntent(Landroid/content/Intent;ZLjava/lang/String;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
