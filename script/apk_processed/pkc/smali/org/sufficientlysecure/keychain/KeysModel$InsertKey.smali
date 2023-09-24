.class public final Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;
.super Lcom/squareup/sqldelight/SqlDelightStatement;
.source "KeysModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeysModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsertKey"
.end annotation


# instance fields
.field private final keysModelFactory:Lorg/sufficientlysecure/keychain/KeysModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeysModel$Factory<",
            "+",
            "Lorg/sufficientlysecure/keychain/KeysModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Lorg/sufficientlysecure/keychain/KeysModel$Factory<",
            "+",
            "Lorg/sufficientlysecure/keychain/KeysModel;",
            ">;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const-string v0, "keys"

    const-string v1, "INSERT INTO keys (\n        master_key_id, rank, key_id, key_size, key_curve_oid, algorithm, fingerprint,\n        can_certify, can_sign, can_encrypt, can_authenticate,\n        is_revoked, has_secret, is_secure, creation, expiry\n    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 764
    invoke-interface {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/sqldelight/SqlDelightStatement;-><init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 770
    iput-object v4, v2, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->keysModelFactory:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZJLjava/lang/Long;)V
    .locals 11

    move-object/16 v8, p0

    move-wide/16 v9, p1

    move-wide/16 p0, p3

    move-wide/16 p2, p5

    move-object/16 p4, p7

    move-object/16 p5, p8

    move/16 p6, p9

    move-object/16 p7, p10

    move/16 p8, p11

    move/16 p9, p12

    move/16 p10, p13

    move/16 p11, p14

    move/16 p12, p15

    move-object/16 p13, p16

    move/16 p14, p17

    move-wide/16 p15, p18

    move-object/16 p17, p20

    move-object v0, v8

    move-object/from16 v1, p5

    const/4 v2, 0x1

    move-wide v3, v9

    .line 778
    invoke-virtual {v0, v2, v3, v4}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    const/4 v2, 0x2

    move-wide v3, p0

    .line 779
    invoke-virtual {v0, v2, v3, v4}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    const/4 v2, 0x3

    move-wide v3, p2

    .line 780
    invoke-virtual {v0, v2, v3, v4}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    const/4 v2, 0x4

    if-nez p4, :cond_0

    .line 782
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindNull(I)V

    goto :goto_0

    .line 784
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    :goto_0
    const/4 v2, 0x5

    if-nez v1, :cond_1

    .line 787
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindNull(I)V

    goto :goto_1

    .line 789
    :cond_1
    invoke-virtual {v0, v2, v1}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v1, 0x6

    move/from16 v2, p6

    int-to-long v2, v2

    .line 791
    invoke-virtual {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    const/4 v1, 0x7

    move-object/from16 v2, p7

    .line 792
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindBlob(I[B)V

    const/16 v1, 0x8

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    if-eqz p8, :cond_2

    move-wide v6, v4

    goto :goto_2

    :cond_2
    move-wide v6, v2

    .line 793
    :goto_2
    invoke-virtual {v0, v1, v6, v7}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    const/16 v1, 0x9

    if-eqz p9, :cond_3

    move-wide v6, v4

    goto :goto_3

    :cond_3
    move-wide v6, v2

    .line 794
    :goto_3
    invoke-virtual {v0, v1, v6, v7}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    const/16 v1, 0xa

    if-eqz p10, :cond_4

    move-wide v6, v4

    goto :goto_4

    :cond_4
    move-wide v6, v2

    .line 795
    :goto_4
    invoke-virtual {v0, v1, v6, v7}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    const/16 v1, 0xb

    if-eqz p11, :cond_5

    move-wide v6, v4

    goto :goto_5

    :cond_5
    move-wide v6, v2

    .line 796
    :goto_5
    invoke-virtual {v0, v1, v6, v7}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    const/16 v1, 0xc

    if-eqz p12, :cond_6

    move-wide v6, v4

    goto :goto_6

    :cond_6
    move-wide v6, v2

    .line 797
    :goto_6
    invoke-virtual {v0, v1, v6, v7}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    const/16 v1, 0xd

    .line 798
    iget-object v6, v0, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->keysModelFactory:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    iget-object v6, v6, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->has_secretAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    move-object/from16 v7, p13

    invoke-interface {v6, v7}, Lcom/squareup/sqldelight/ColumnAdapter;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v1, v6, v7}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    const/16 v1, 0xe

    if-eqz p14, :cond_7

    move-wide v2, v4

    .line 799
    :cond_7
    invoke-virtual {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    const/16 v1, 0xf

    move-wide/from16 v2, p15

    .line 800
    invoke-virtual {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    const/16 v1, 0x10

    if-nez p17, :cond_8

    .line 802
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindNull(I)V

    goto :goto_7

    .line 804
    :cond_8
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->bindLong(IJ)V

    :goto_7
    return-void

    const-string p18, "M_InsDal"

    const-string p19, "Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;--->bind(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZJLjava/lang/Long;)V"

    invoke-static/range {p18 .. p19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
