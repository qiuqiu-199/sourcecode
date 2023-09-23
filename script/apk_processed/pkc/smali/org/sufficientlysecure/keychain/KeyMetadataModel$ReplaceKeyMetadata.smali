.class public final Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;
.super Lcom/squareup/sqldelight/SqlDelightStatement;
.source "KeyMetadataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeyMetadataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReplaceKeyMetadata"
.end annotation


# instance fields
.field private final keyMetadataModelFactory:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory<",
            "+",
            "Lorg/sufficientlysecure/keychain/KeyMetadataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory<",
            "+",
            "Lorg/sufficientlysecure/keychain/KeyMetadataModel;",
            ">;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const-string v0, "key_metadata"

    const-string v1, "REPLACE INTO key_metadata (master_key_id, last_updated, seen_on_keyservers) VALUES (?, ?, ?)"

    .line 170
    invoke-interface {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/sqldelight/SqlDelightStatement;-><init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 172
    iput-object v4, v2, Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;->keyMetadataModelFactory:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Boolean;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    const/4 v0, 0x1

    if-nez v4, :cond_0

    .line 178
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;->bindNull(I)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;->bindLong(IJ)V

    :goto_0
    const/4 v4, 0x2

    if-nez v5, :cond_1

    .line 183
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;->bindNull(I)V

    goto :goto_1

    .line 185
    :cond_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;->keyMetadataModelFactory:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;->last_updatedAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v0, v5}, Lcom/squareup/sqldelight/ColumnAdapter;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3, v4, v0, v1}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;->bindLong(IJ)V

    :goto_1
    const/4 v4, 0x3

    if-nez p0, :cond_2

    .line 188
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;->bindNull(I)V

    goto :goto_3

    .line 190
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    :goto_2
    invoke-virtual {v3, v4, v5, p0}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;->bindLong(IJ)V

    :goto_3
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;--->bind(Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Boolean;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
