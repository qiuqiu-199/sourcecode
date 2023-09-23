.class final synthetic Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$1;->$instance:Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$1;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public create(JJJ)Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsModel;
    .locals 11

    move-object/16 v8, p0

    move-wide/16 v9, p1

    move-wide/16 p0, p3

    move-wide/16 p2, p5

    new-instance v7, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;

    move-object v0, v7

    move-wide v1, v9

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;-><init>(JJJ)V

    check-cast v7, Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsModel;

    return-object v7

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$1;--->create(JJJ)Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsModel;"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
