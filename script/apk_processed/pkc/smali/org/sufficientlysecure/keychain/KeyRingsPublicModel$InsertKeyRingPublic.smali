.class public final Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;
.super Lcom/squareup/sqldelight/SqlDelightStatement;
.source "KeyRingsPublicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsertKeyRingPublic"
.end annotation


# direct methods
.method public constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "keyrings_public"

    const-string v1, "INSERT INTO keyrings_public (master_key_id, key_ring_data) VALUES (?, ?)"

    .line 113
    invoke-interface {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/sqldelight/SqlDelightStatement;-><init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(J[B)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    move-object/16 p0, p3

    const/4 v0, 0x1

    .line 118
    invoke-virtual {v1, v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;->bindLong(IJ)V

    const/4 v2, 0x2

    if-nez p0, :cond_0

    .line 120
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;->bindNull(I)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v1, v2, p0}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;->bindBlob(I[B)V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;--->bind(J[B)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
