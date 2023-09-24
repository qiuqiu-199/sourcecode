.class public Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;
.super Landroid/content/ContentProvider;
.source "KeychainExternalProvider.java"


# static fields
.field private static final AUTOCRYPT_STATUS:I = 0xc9

.field private static final AUTOCRYPT_STATUS_INTERNAL:I = 0xca

.field private static final EMAIL_STATUS:I = 0x65


# instance fields
.field private apiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

.field private uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 50
    invoke-direct {v0}, Landroid/content/ContentProvider;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private columnNameToRowContent(Ljava/lang/String;Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;)Ljava/lang/Object;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move-object/16 p0, p3

    .line 178
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "autocrypt_peer_state"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "uid_master_key_id"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "uid_address"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "uid_key_status"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "autocrypt_master_key_id"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "autocrypt_key_status"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "uid_candidates"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 225
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled case "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    if-nez v6, :cond_1

    return-object v3

    .line 222
    :cond_1
    iget-object v5, v6, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;->masterKeyId:Ljava/lang/Long;

    return-object v5

    :pswitch_1
    if-nez v6, :cond_2

    return-object v3

    .line 215
    :cond_2
    iget-boolean v5, v6, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;->isVerified:Z

    if-eqz v5, :cond_3

    const/4 v1, 0x2

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    :pswitch_2
    if-nez v6, :cond_4

    return-object v3

    .line 209
    :cond_4
    iget-object v5, v6, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;->autocryptState:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->getPeerStateValue(Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    :pswitch_3
    if-nez p0, :cond_5

    return-object v3

    .line 203
    :cond_5
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->candidates()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    return-object v5

    :pswitch_4
    if-nez p0, :cond_6

    return-object v3

    .line 197
    :cond_6
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->master_key_id()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    return-object v5

    :pswitch_5
    if-nez p0, :cond_7

    return-object v3

    .line 191
    :cond_7
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->user_id()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :pswitch_6
    if-nez p0, :cond_8

    return-object v3

    .line 183
    :cond_8
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->keyStatus()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v5

    sget-object v6, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SECRET:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    if-ne v5, v6, :cond_9

    const/4 v1, 0x2

    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    :sswitch_data_0
    .sparse-switch
        -0x3c12561 -> :sswitch_6
        0x5f33cf2 -> :sswitch_5
        0x52450858 -> :sswitch_4
        0x6fbbd521 -> :sswitch_3
        0x7187b705 -> :sswitch_2
        0x78aacdc9 -> :sswitch_1
        0x78baae94 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;--->columnNameToRowContent(Ljava/lang/String;Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;)Ljava/lang/Object;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getPeerStateValue(Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;)I
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 246
    sget-object v0, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider$1;->$SwitchMap$org$sufficientlysecure$keychain$remote$AutocryptInteractor$AutocryptState:[I

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->ordinal()I

    move-result v2

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    .line 253
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v0, "Unhandled case!"

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const/16 v2, 0x32

    return v2

    :pswitch_1
    const/16 v2, 0x28

    return v2

    :pswitch_2
    const/16 v2, 0x14

    return v2

    :pswitch_3
    const/16 v2, 0xa

    return v2

    :pswitch_4
    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;--->getPeerStateValue(Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;)I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadAutocryptRecommendationMap([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 241
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;

    move-result-object v3

    .line 242
    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->determineAutocryptRecommendations([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;--->loadAutocryptRecommendationMap([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadUidStatusMap([Ljava/lang/String;Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 230
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/UserIdDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/UserIdDao;

    move-result-object v0

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 232
    aget-object v1, v3, v4

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/daos/UserIdDao;->getUidStatusByEmailLike(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;

    move-result-object v0

    .line 233
    aget-object v3, v3, v4

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    return-object v3

    .line 235
    :cond_0
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/daos/UserIdDao;->getUidStatusByEmail([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;--->loadUidStatusMap([Ljava/lang/String;Z)Ljava/util/Map;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private mapResultsToProjectedMatrixCursor([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Landroid/database/MatrixCursor;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;",
            ">;)",
            "Landroid/database/MatrixCursor;"
        }
    .end annotation

    move-object/16 v11, p0

    move-object/16 v12, p1

    move-object/16 v13, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 158
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 159
    array-length v1, v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v13, v3

    .line 160
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;

    .line 161
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;

    .line 163
    array-length v7, v12

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 164
    :goto_1
    array-length v9, v12

    if-ge v8, v9, :cond_2

    const-string v9, "address"

    .line 165
    aget-object v10, v12, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "_id"

    aget-object v10, v12, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    .line 168
    :cond_0
    aget-object v9, v12, v8

    invoke-direct {v11, v9, v5, v6}, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->columnNameToRowContent(Ljava/lang/String;Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    .line 166
    :cond_1
    :goto_2
    aput-object v4, v7, v8

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;--->mapResultsToProjectedMatrixCursor([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Landroid/database/MatrixCursor;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected buildUriMatcher()Landroid/content/UriMatcher;
    .locals 7

    move-object/16 v4, p0

    .line 62
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    const-string v1, "org.sufficientlysecure.keychain.provider.exported"

    const-string v2, "email_status"

    const/16 v3, 0x65

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "autocrypt_status"

    const/16 v3, 0xc9

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "autocrypt_status/*"

    const/16 v3, 0xca

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;--->buildUriMatcher()Landroid/content/UriMatcher;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 268
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;--->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;--->getType(Landroid/net/Uri;)Ljava/lang/String;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 263
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;--->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate()Z
    .locals 6

    move-object/16 v3, p0

    .line 75
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 77
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can\'t be null during onCreate!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/ApiAppDao;)V

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->apiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    const/4 v0, 0x1

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;--->onCreate()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "query(uri="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", proj="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    .line 92
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 95
    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->apiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, v6}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_e

    packed-switch v1, :pswitch_data_0

    .line 150
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown URI "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_0
    const-string v2, "org.sufficientlysecure.keychain"

    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    new-instance v6, Ljava/security/AccessControlException;

    const-string v7, "This URI can only be called internally!"

    invoke-direct {v6, v7}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 110
    :cond_1
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    :pswitch_1
    const/16 v6, 0xca

    const/4 v2, 0x1

    if-eq v1, v6, :cond_3

    .line 113
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->apiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->isAllowedIgnoreErrors()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-nez v6, :cond_4

    .line 115
    new-instance v6, Ljava/security/AccessControlException;

    const-string v7, "An application must register before use of KeychainExternalProvider!"

    invoke-direct {v6, v7}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    if-nez v7, :cond_5

    .line 119
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Please provide a projection!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 122
    :cond_5
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 123
    array-length v1, p1

    if-ne v1, v2, :cond_6

    aget-object v1, p1, p2

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    const-string v3, "uid_key_status"

    .line 124
    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "uid_address"

    .line 125
    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "uid_master_key_id"

    .line 126
    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "uid_candidates"

    .line 127
    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v3, 0x1

    :goto_4
    const-string v4, "autocrypt_peer_state"

    .line 128
    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "autocrypt_master_key_id"

    .line 129
    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "autocrypt_key_status"

    .line 130
    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    const/4 p2, 0x1

    :cond_a
    if-eqz v1, :cond_b

    if-eqz p2, :cond_b

    .line 132
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "Cannot wildcard-query autocrypt results!"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_b
    if-eqz v3, :cond_c

    .line 136
    invoke-direct {v5, p1, v1}, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->loadUidStatusMap([Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v6

    goto :goto_5

    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    :goto_5
    if-eqz p2, :cond_d

    .line 138
    invoke-direct {v5, p1, v0}, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->loadAutocryptRecommendationMap([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    goto :goto_6

    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 141
    :goto_6
    invoke-direct {v5, v7, p1, v6, p2}, Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;->mapResultsToProjectedMatrixCursor([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 143
    invoke-static {}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->getNotifyUriAllKeys()Landroid/net/Uri;

    move-result-object v7

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v6, p0, v7}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v6

    :cond_e
    const-string v6, "This API is no longer supported by OpenKeychain!"

    .line 100
    invoke-static {p0, v6, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 101
    new-instance v6, Landroid/database/MatrixCursor;

    invoke-direct {v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v6

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;--->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 273
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/remote/KeychainExternalProvider;--->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
