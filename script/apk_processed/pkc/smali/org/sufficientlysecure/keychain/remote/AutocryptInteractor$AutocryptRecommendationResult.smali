.class public Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;
.super Ljava/lang/Object;
.source "AutocryptInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutocryptRecommendationResult"
.end annotation


# instance fields
.field public final autocryptState:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

.field public final isVerified:Z

.field public final masterKeyId:Ljava/lang/Long;

.field public final peerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;Ljava/lang/Long;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move/16 p1, p4

    .line 235
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;->peerId:Ljava/lang/String;

    .line 237
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;->autocryptState:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    .line 238
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;->masterKeyId:Ljava/lang/Long;

    .line 239
    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;->isVerified:Z

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;---><init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;Ljava/lang/Long;Z)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
