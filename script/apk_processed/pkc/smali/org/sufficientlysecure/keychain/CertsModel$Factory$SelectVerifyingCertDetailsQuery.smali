.class final Lorg/sufficientlysecure/keychain/CertsModel$Factory$SelectVerifyingCertDetailsQuery;
.super Lcom/squareup/sqldelight/SqlDelightQuery;
.source "CertsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/CertsModel$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectVerifyingCertDetailsQuery"
.end annotation


# instance fields
.field private final master_key_id:J

.field private final rank:J

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/CertsModel$Factory;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/CertsModel$Factory;JJ)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-wide/16 v6, p2

    move-wide/16 p1, p4

    .line 157
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/CertsModel$Factory$SelectVerifyingCertDetailsQuery;->this$0:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    const-string v5, "SELECT master_key_id AS masterKeyId, key_id_certifier AS signerMasterKeyId, creation * 1000 AS creation\n    FROM certs\n    WHERE verified = 1 AND master_key_id = ?1 AND rank = ?2\n    ORDER BY creation DESC\n    LIMIT 1"

    .line 158
    new-instance v0, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "certs"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    invoke-direct {v4, v5, v0}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 165
    iput-wide v6, v4, Lorg/sufficientlysecure/keychain/CertsModel$Factory$SelectVerifyingCertDetailsQuery;->master_key_id:J

    .line 166
    iput-wide p1, v4, Lorg/sufficientlysecure/keychain/CertsModel$Factory$SelectVerifyingCertDetailsQuery;->rank:J

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/CertsModel$Factory$SelectVerifyingCertDetailsQuery;---><init>(Lorg/sufficientlysecure/keychain/CertsModel$Factory;JJ)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 171
    iget-wide v0, v3, Lorg/sufficientlysecure/keychain/CertsModel$Factory$SelectVerifyingCertDetailsQuery;->master_key_id:J

    const/4 v2, 0x1

    invoke-interface {v4, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 173
    iget-wide v0, v3, Lorg/sufficientlysecure/keychain/CertsModel$Factory$SelectVerifyingCertDetailsQuery;->rank:J

    const/4 v2, 0x2

    invoke-interface {v4, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/CertsModel$Factory$SelectVerifyingCertDetailsQuery;--->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
