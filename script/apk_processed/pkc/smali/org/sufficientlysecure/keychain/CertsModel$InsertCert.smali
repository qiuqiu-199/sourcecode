.class public final Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;
.super Lcom/squareup/sqldelight/SqlDelightStatement;
.source "CertsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/CertsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsertCert"
.end annotation


# instance fields
.field private final certsModelFactory:Lorg/sufficientlysecure/keychain/CertsModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "+",
            "Lorg/sufficientlysecure/keychain/CertsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "+",
            "Lorg/sufficientlysecure/keychain/CertsModel;",
            ">;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const-string v0, "certs"

    const-string v1, "INSERT INTO certs (master_key_id, rank, key_id_certifier, type, verified, creation, data) VALUES (?, ?, ?, ?, ?, ?, ?)"

    .line 183
    invoke-interface {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/sqldelight/SqlDelightStatement;-><init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 185
    iput-object v4, v2, Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;->certsModelFactory:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/CertsModel$Factory;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;J[B)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    move-wide/16 p0, p3

    move-wide/16 p2, p5

    move-wide/16 p4, p7

    move-object/16 p6, p9

    move-wide/16 p7, p10

    move-object/16 p9, p12

    const/4 v0, 0x1

    .line 191
    invoke-virtual {v1, v0, v2, v3}, Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;->bindLong(IJ)V

    const/4 v2, 0x2

    .line 192
    invoke-virtual {v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;->bindLong(IJ)V

    const/4 v2, 0x3

    .line 193
    invoke-virtual {v1, v2, p2, p3}, Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;->bindLong(IJ)V

    const/4 v2, 0x4

    .line 194
    invoke-virtual {v1, v2, p4, p5}, Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;->bindLong(IJ)V

    .line 195
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;->certsModelFactory:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/CertsModel$Factory;->verifiedAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v2, p6}, Lcom/squareup/sqldelight/ColumnAdapter;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p0, 0x5

    invoke-virtual {v1, p0, v2, v3}, Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;->bindLong(IJ)V

    const/4 v2, 0x6

    .line 196
    invoke-virtual {v1, v2, p7, p8}, Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;->bindLong(IJ)V

    const/4 v2, 0x7

    .line 197
    invoke-virtual {v1, v2, p9}, Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;->bindBlob(I[B)V

    return-void

    const-string p10, "M_InsDal"

    const-string p11, "Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;--->bind(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;J[B)V"

    invoke-static/range {p10 .. p11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
