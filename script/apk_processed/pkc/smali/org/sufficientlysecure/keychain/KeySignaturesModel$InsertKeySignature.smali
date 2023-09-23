.class public final Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;
.super Lcom/squareup/sqldelight/SqlDelightStatement;
.source "KeySignaturesModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeySignaturesModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsertKeySignature"
.end annotation


# direct methods
.method public constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "key_signatures"

    const-string v1, "INSERT INTO key_signatures (master_key_id, signer_key_id) VALUES (?, ?)"

    .line 104
    invoke-interface {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/sqldelight/SqlDelightStatement;-><init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(JJ)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    move-wide/16 p0, p3

    const/4 v0, 0x1

    .line 109
    invoke-virtual {v1, v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;->bindLong(IJ)V

    const/4 v2, 0x2

    .line 110
    invoke-virtual {v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;->bindLong(IJ)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;--->bind(JJ)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
