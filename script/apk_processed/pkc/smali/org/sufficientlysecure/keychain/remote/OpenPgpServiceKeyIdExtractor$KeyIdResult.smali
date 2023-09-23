.class Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;
.super Ljava/lang/Object;
.source "OpenPgpServiceKeyIdExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyIdResult"
.end annotation


# instance fields
.field private final mAllKeysConfirmed:Z

.field private final mCombinedAutocryptState:I

.field private final mExplicitKeyIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeySelectionPendingIntent:Landroid/app/PendingIntent;

.field private final mStatus:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

.field private final mUserKeyIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/PendingIntent;Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 247
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mKeySelectionPendingIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    .line 249
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mUserKeyIds:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mAllKeysConfirmed:Z

    .line 251
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mStatus:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    .line 252
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mExplicitKeyIds:Ljava/util/HashSet;

    .line 253
    iput v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mCombinedAutocryptState:I

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;---><init>(Landroid/app/PendingIntent;Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Landroid/app/PendingIntent;Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$1;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;-><init>(Landroid/app/PendingIntent;Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/HashSet;ZLorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;Z",
            "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;",
            "I)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    move/16 p1, p4

    .line 257
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 258
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mKeySelectionPendingIntent:Landroid/app/PendingIntent;

    .line 259
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mUserKeyIds:Ljava/util/HashSet;

    .line 260
    iput-boolean v3, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mAllKeysConfirmed:Z

    .line 261
    iput-object p0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mStatus:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    .line 262
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mExplicitKeyIds:Ljava/util/HashSet;

    .line 263
    iput p1, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mCombinedAutocryptState:I

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;---><init>(Ljava/util/HashSet;ZLorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;I)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Ljava/util/HashSet;ZLorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;ILorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$1;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;-><init>(Ljava/util/HashSet;ZLorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;I)V

    return-void
.end method

.method private constructor <init>(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 266
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 267
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mKeySelectionPendingIntent:Landroid/app/PendingIntent;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mKeySelectionPendingIntent:Landroid/app/PendingIntent;

    .line 268
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mUserKeyIds:Ljava/util/HashSet;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mUserKeyIds:Ljava/util/HashSet;

    .line 269
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mAllKeysConfirmed:Z

    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mAllKeysConfirmed:Z

    .line 270
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mStatus:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mStatus:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    .line 271
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mExplicitKeyIds:Ljava/util/HashSet;

    .line 272
    iget v2, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mCombinedAutocryptState:I

    iput v2, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mCombinedAutocryptState:I

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;---><init>(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;Ljava/util/HashSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;Ljava/util/HashSet;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->withExplicitKeyIds(Ljava/util/HashSet;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    move-result-object p0

    return-object p0
.end method

.method private withExplicitKeyIds(Ljava/util/HashSet;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 308
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;-><init>(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;Ljava/util/HashSet;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;--->withExplicitKeyIds(Ljava/util/HashSet;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method getAutocryptRecommendation()I
    .locals 4

    move-object/16 v1, p0

    .line 316
    iget v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mCombinedAutocryptState:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;--->getAutocryptRecommendation()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getKeyIds()[J
    .locals 5

    move-object/16 v2, p0

    .line 290
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mKeySelectionPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "result intent must be null when getKeyIds is called!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 293
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 294
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mUserKeyIds:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mUserKeyIds:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 297
    :cond_1
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mExplicitKeyIds:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mExplicitKeyIds:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 300
    :cond_2
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getUnboxedLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;--->getKeyIds()[J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getKeySelectionPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    move-object/16 v2, p0

    .line 280
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mKeySelectionPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "result intent must not be null when getResultIntent is called!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 283
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mUserKeyIds:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 284
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "key ids must be null when getKeyIds is called!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 286
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mKeySelectionPendingIntent:Landroid/app/PendingIntent;

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;--->getKeySelectionPendingIntent()Landroid/app/PendingIntent;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getStatus()Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;
    .locals 4

    move-object/16 v1, p0

    .line 312
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mStatus:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;--->getStatus()Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method hasKeySelectionPendingIntent()Z
    .locals 4

    move-object/16 v1, p0

    .line 276
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mKeySelectionPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;--->hasKeySelectionPendingIntent()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method isAllKeysConfirmed()Z
    .locals 4

    move-object/16 v1, p0

    .line 304
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->mAllKeysConfirmed:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;--->isAllKeysConfirmed()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
