.class public final Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;
.super Lcom/squareup/sqldelight/SqlDelightStatement;
.source "UserPacketsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/UserPacketsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsertUserPacket"
.end annotation


# direct methods
.method public constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "user_packets"

    const-string v1, "INSERT INTO user_packets (master_key_id, rank, type, user_id, name, email, comment, attribute_data, is_primary, is_revoked)\n    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 637
    invoke-interface {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/sqldelight/SqlDelightStatement;-><init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(JILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    move/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    move/16 p7, p10

    move/16 p8, p11

    const/4 v0, 0x1

    .line 645
    invoke-virtual {v1, v0, v2, v3}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindLong(IJ)V

    int-to-long v2, p0

    const/4 p0, 0x2

    .line 646
    invoke-virtual {v1, p0, v2, v3}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindLong(IJ)V

    const/4 v2, 0x3

    if-nez p1, :cond_0

    .line 648
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindNull(I)V

    goto :goto_0

    .line 650
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindLong(IJ)V

    :goto_0
    const/4 v2, 0x4

    if-nez p2, :cond_1

    .line 653
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindNull(I)V

    goto :goto_1

    .line 655
    :cond_1
    invoke-virtual {v1, v2, p2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v2, 0x5

    if-nez p3, :cond_2

    .line 658
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindNull(I)V

    goto :goto_2

    .line 660
    :cond_2
    invoke-virtual {v1, v2, p3}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 v2, 0x6

    if-nez p4, :cond_3

    .line 663
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindNull(I)V

    goto :goto_3

    .line 665
    :cond_3
    invoke-virtual {v1, v2, p4}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindString(ILjava/lang/String;)V

    :goto_3
    const/4 v2, 0x7

    if-nez p5, :cond_4

    .line 668
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindNull(I)V

    goto :goto_4

    .line 670
    :cond_4
    invoke-virtual {v1, v2, p5}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindString(ILjava/lang/String;)V

    :goto_4
    const/16 v2, 0x8

    if-nez p6, :cond_5

    .line 673
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindNull(I)V

    goto :goto_5

    .line 675
    :cond_5
    invoke-virtual {v1, v2, p6}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindBlob(I[B)V

    :goto_5
    const/16 v2, 0x9

    const-wide/16 v3, 0x0

    const-wide/16 p1, 0x1

    if-eqz p7, :cond_6

    move-wide p3, p1

    goto :goto_6

    :cond_6
    move-wide p3, v3

    .line 677
    :goto_6
    invoke-virtual {v1, v2, p3, p4}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindLong(IJ)V

    const/16 v2, 0xa

    if-eqz p8, :cond_7

    move-wide v3, p1

    .line 678
    :cond_7
    invoke-virtual {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->bindLong(IJ)V

    return-void

    const-string p9, "M_InsDal"

    const-string p10, "Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;--->bind(JILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)V"

    invoke-static/range {p9 .. p10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
