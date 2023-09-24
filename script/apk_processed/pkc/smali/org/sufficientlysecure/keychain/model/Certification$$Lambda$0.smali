.class final synthetic Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/CertsModel$Creator;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/CertsModel$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$0;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$0;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/CertsModel$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$0;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$0;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public create(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;J[B)Lorg/sufficientlysecure/keychain/CertsModel;
    .locals 17

    move-object/16 v14, p0

    move-wide/16 v15, p1

    move-wide/16 p0, p3

    move-wide/16 p2, p5

    move-wide/16 p4, p7

    move-object/16 p6, p9

    move-wide/16 p7, p10

    move-object/16 p9, p12

    new-instance v13, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;

    move-object v0, v13

    move-wide v1, v15

    move-wide/from16 v3, p0

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;-><init>(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;J[B)V

    check-cast v13, Lorg/sufficientlysecure/keychain/CertsModel;

    return-object v13

    const-string p10, "M_InsDal"

    const-string p11, "Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$0;--->create(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;J[B)Lorg/sufficientlysecure/keychain/CertsModel;"

    invoke-static/range {p10 .. p11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
