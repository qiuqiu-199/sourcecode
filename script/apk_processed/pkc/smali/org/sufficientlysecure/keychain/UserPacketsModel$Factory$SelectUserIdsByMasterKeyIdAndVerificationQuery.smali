.class final Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdAndVerificationQuery;
.super Lcom/squareup/sqldelight/SqlDelightQuery;
.source "UserPacketsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectUserIdsByMasterKeyIdAndVerificationQuery"
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

.field private final master_key_id:J

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

.field private final verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;Lorg/sufficientlysecure/keychain/CertsModel$Factory;JLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "+",
            "Lorg/sufficientlysecure/keychain/CertsModel;",
            ">;J",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;",
            ")V"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move-wide/16 p0, p3

    move-object/16 p2, p5

    .line 487
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdAndVerificationQuery;->this$0:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    const-string v5, "SELECT user_packets.master_key_id, user_packets.rank, user_id, name, email, comment, is_primary, is_revoked, MIN(certs.verified) AS verified_int\n    FROM user_packets\n        LEFT JOIN certs ON ( user_packets.master_key_id = certs.master_key_id AND user_packets.rank = certs.rank AND certs.verified > 0 )\n    WHERE user_packets.type IS NULL AND user_packets.is_revoked = 0 AND user_packets.master_key_id = ?1 AND certs.verified = ?2\n    GROUP BY user_packets.rank\n    ORDER BY user_packets.rank ASC"

    .line 488
    new-instance v0, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "user_packets"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "certs"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    invoke-direct {v4, v5, v0}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 496
    iput-object v6, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdAndVerificationQuery;->certsModelFactory:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    .line 497
    iput-wide p0, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdAndVerificationQuery;->master_key_id:J

    .line 498
    iput-object p2, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdAndVerificationQuery;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdAndVerificationQuery;---><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;Lorg/sufficientlysecure/keychain/CertsModel$Factory;JLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 503
    iget-wide v0, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdAndVerificationQuery;->master_key_id:J

    const/4 v2, 0x1

    invoke-interface {v5, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 505
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdAndVerificationQuery;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 507
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdAndVerificationQuery;->certsModelFactory:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/CertsModel$Factory;->verifiedAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v2, v0}, Lcom/squareup/sqldelight/ColumnAdapter;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v5, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 509
    :cond_0
    invoke-interface {v5, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_0
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdAndVerificationQuery;--->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
