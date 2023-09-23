.class public final Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$DeleteByMasterKeyId;
.super Lcom/squareup/sqldelight/SqlDelightStatement;
.source "KeyRingsPublicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteByMasterKeyId"
.end annotation


# direct methods
.method public constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "keyrings_public"

    const-string v1, "DELETE FROM keyrings_public\n    WHERE master_key_id = ?"

    .line 129
    invoke-interface {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/sqldelight/SqlDelightStatement;-><init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$DeleteByMasterKeyId;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(J)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    const/4 v0, 0x1

    .line 135
    invoke-virtual {v1, v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$DeleteByMasterKeyId;->bindLong(IJ)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$DeleteByMasterKeyId;--->bind(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
