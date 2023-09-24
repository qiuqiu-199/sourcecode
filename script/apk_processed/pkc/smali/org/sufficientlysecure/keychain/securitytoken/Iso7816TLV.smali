.class public Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;
.super Ljava/lang/Object;
.source "Iso7816TLV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;
    }
.end annotation


# instance fields
.field public final mL:I

.field public final mT:I

.field public final mV:[B


# direct methods
.method private constructor <init>(II[B)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mT:I

    .line 43
    iput v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mL:I

    .line 44
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;---><init>(II[B)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(II[BLorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;-><init>(II[B)V

    return-void
.end method

.method public static findRecursive(Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;I)Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 182
    iget v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mT:I

    if-ne v0, v4, :cond_0

    return-object v3

    .line 184
    :cond_0
    instance-of v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;

    if-eqz v0, :cond_2

    .line 185
    check-cast v3, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;->mSubs:[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    array-length v0, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, v3, v1

    .line 186
    invoke-static {v2, v4}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->findRecursive(Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;I)Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    return-object v3

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;--->findRecursive(Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;I)Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static readList([BZ)[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move/16 v4, p1

    .line 126
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 134
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 140
    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->readSingle(Ljava/nio/ByteBuffer;Z)Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    .line 145
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v3

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;--->readList([BZ)[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static readSingle(Ljava/nio/ByteBuffer;Z)Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v6, p0

    move/16 v7, p1

    .line 79
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v3, v0, 0x1f

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_2

    .line 82
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v5, v3, 0x1f

    if-ne v5, v4, :cond_1

    .line 84
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Only tags up to two bytes are supported!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    shl-int/lit8 v0, v0, 0x8

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v0, v3

    .line 92
    :cond_2
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-ne v3, v4, :cond_3

    .line 94
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    goto :goto_1

    :cond_3
    const/16 v4, 0x82

    if-ne v3, v4, :cond_4

    .line 96
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 97
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_1

    :cond_4
    const/16 v4, 0x80

    if-lt v3, v4, :cond_5

    .line 99
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid length field!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 105
    :cond_5
    :goto_1
    new-array v4, v3, [B

    .line 106
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_6

    if-eqz v1, :cond_6

    .line 111
    invoke-static {v4, v2}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->readList([BZ)[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    move-result-object v6

    .line 112
    new-instance v7, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;

    invoke-direct {v7, v0, v3, v4, v6}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;-><init>(II[B[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;)V

    return-object v7

    .line 115
    :cond_6
    new-instance v6, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    invoke-direct {v6, v0, v3, v4}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;-><init>(II[B)V

    return-object v6

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;--->readSingle(Ljava/nio/ByteBuffer;Z)Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static readSingle([BZ)Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v0, p0

    move/16 v1, p1

    .line 63
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->readSingle(Ljava/nio/ByteBuffer;Z)Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;--->readSingle([BZ)Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public prettyPrint()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 48
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->prettyPrint(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;--->prettyPrint()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public prettyPrint(I)Ljava/lang/String;
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    const-string v0, "                                                  "

    const/4 v1, 0x2

    mul-int/lit8 v5, v5, 0x2

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "tag T %4x L %04d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, v4, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;--->prettyPrint(I)Ljava/lang/String;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
