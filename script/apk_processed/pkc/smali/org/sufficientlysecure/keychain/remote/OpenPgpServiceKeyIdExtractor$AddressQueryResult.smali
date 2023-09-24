.class Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;
.super Ljava/lang/Object;
.source "OpenPgpServiceKeyIdExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddressQueryResult"
.end annotation


# instance fields
.field private final autocryptKeyStatus:I

.field private final autocryptMasterKeyId:Ljava/lang/Long;

.field private final autocryptState:I

.field private uidHasMultipleCandidates:Z

.field private final uidKeyStatus:I

.field private final uidMasterKeyId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/Long;IZLjava/lang/Long;II)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    .line 229
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->uidMasterKeyId:Ljava/lang/Long;

    .line 231
    iput v2, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->uidKeyStatus:I

    .line 232
    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->uidHasMultipleCandidates:Z

    .line 233
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->autocryptMasterKeyId:Ljava/lang/Long;

    .line 234
    iput p2, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->autocryptKeyStatus:I

    .line 235
    iput p3, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->autocryptState:I

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;---><init>(Ljava/lang/Long;IZLjava/lang/Long;II)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)Ljava/lang/Long;
    .locals 0

    .line 220
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->autocryptMasterKeyId:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)I
    .locals 0

    .line 220
    iget p0, p0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->autocryptKeyStatus:I

    return p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)I
    .locals 0

    .line 220
    iget p0, p0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->autocryptState:I

    return p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)Ljava/lang/Long;
    .locals 0

    .line 220
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->uidMasterKeyId:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)Z
    .locals 0

    .line 220
    iget-boolean p0, p0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->uidHasMultipleCandidates:Z

    return p0
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;)I
    .locals 0

    .line 220
    iget p0, p0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$AddressQueryResult;->uidKeyStatus:I

    return p0
.end method
