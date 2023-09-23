.class public abstract Lorg/sufficientlysecure/keychain/model/Certification;
.super Ljava/lang/Object;
.source "Certification.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/CertsModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;
    }
.end annotation


# static fields
.field public static final CERT_DETAILS_MAPPER:Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper<",
            "Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACTORY:Lorg/sufficientlysecure/keychain/CertsModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "Lorg/sufficientlysecure/keychain/model/Certification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/CertsModel$Creator;

    sget-object v2, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;->VERIFICATON_STATUS_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/CertsModel$Factory;-><init>(Lorg/sufficientlysecure/keychain/CertsModel$Creator;Lcom/squareup/sqldelight/ColumnAdapter;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/Certification;->FACTORY:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    .line 18
    new-instance v0, Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/Certification$$Lambda$1;->$instance:Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;-><init>(Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/Certification;->CERT_DETAILS_MAPPER:Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/Certification;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/Certification;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;Ljava/util/Date;[B)Lorg/sufficientlysecure/keychain/model/Certification;
    .locals 20

    move-wide/16 v17, p0

    move-wide/16 v19, p2

    move-wide/16 p1, p4

    move-wide/16 p3, p6

    move-object/16 p5, p8

    move-object/16 p6, p9

    move-object/16 p7, p10

    .line 23
    invoke-virtual/range {p6 .. p6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v14, v0, v2

    .line 24
    new-instance v0, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;

    move-object v4, v0

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v16, p7

    invoke-direct/range {v4 .. v16}, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;-><init>(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;J[B)V

    return-object v0

    const-string p8, "M_InsDal"

    const-string p9, "Lorg/sufficientlysecure/keychain/model/Certification;--->create(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;Ljava/util/Date;[B)Lorg/sufficientlysecure/keychain/model/Certification;"

    invoke-static/range {p8 .. p9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;
    .locals 5

    move-object/16 v2, p0

    .line 28
    new-instance v0, Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/Certification;->FACTORY:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/Certification;--->createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;)V
    .locals 16

    move-object/16 v13, p0

    move-object/16 v14, p1

    .line 32
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/Certification;->master_key_id()J

    move-result-wide v1

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/Certification;->rank()J

    move-result-wide v3

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/Certification;->key_id_certifier()J

    move-result-wide v5

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/Certification;->type()J

    move-result-wide v7

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/Certification;->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v9

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/Certification;->creation()J

    move-result-wide v10

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/Certification;->data()[B

    move-result-object v12

    move-object v0, v14

    invoke-virtual/range {v0 .. v12}, Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;->bind(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;J[B)V

    return-void

    const-string v15, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/Certification;--->bindTo(Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;)V"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
