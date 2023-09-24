.class final Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory$SelectMasterKeyIdsBySignerQuery;
.super Lcom/squareup/sqldelight/SqlDelightQuery;
.source "KeySignaturesModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectMasterKeyIdsBySignerQuery"
.end annotation


# instance fields
.field private final signer_key_id:[J

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;[J)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 83
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory$SelectMasterKeyIdsBySignerQuery;->this$0:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT master_key_id\n   FROM key_signatures WHERE signer_key_id IN "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v6

    .line 85
    invoke-static {v0}, Lcom/squareup/sqldelight/internal/QuestionMarks;->ofSize(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "key_signatures"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    .line 84
    invoke-direct {v4, v5, v0}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 88
    iput-object v6, v4, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory$SelectMasterKeyIdsBySignerQuery;->signer_key_id:[J

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory$SelectMasterKeyIdsBySignerQuery;---><init>(Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;[J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 95
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory$SelectMasterKeyIdsBySignerQuery;->signer_key_id:[J

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v4, v0, v3

    add-int/lit8 v6, v2, 0x1

    .line 96
    invoke-interface {v8, v2, v4, v5}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_0

    :cond_0
    return-void

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory$SelectMasterKeyIdsBySignerQuery;--->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
