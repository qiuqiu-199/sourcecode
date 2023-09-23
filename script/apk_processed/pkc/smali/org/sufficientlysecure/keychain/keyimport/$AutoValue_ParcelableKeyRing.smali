.class abstract Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;
.super Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;
.source "$AutoValue_ParcelableKeyRing.java"


# instance fields
.field private final bytes:[B

.field private final expectedFingerprint:[B

.field private final fbUsername:Ljava/lang/String;

.field private final keyIdHex:Ljava/lang/String;

.field private final keybaseName:Ljava/lang/String;


# direct methods
.method constructor <init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 22
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;-><init>()V

    .line 23
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->bytes:[B

    .line 24
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->expectedFingerprint:[B

    .line 25
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keyIdHex:Ljava/lang/String;

    .line 26
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keybaseName:Ljava/lang/String;

    .line 27
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->fbUsername:Ljava/lang/String;

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;---><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    const/4 v0, 0x1

    if-ne v6, v5, :cond_0

    return v0

    .line 78
    :cond_0
    instance-of v1, v6, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 79
    check-cast v6, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    .line 80
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->bytes:[B

    instance-of v3, v6, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;

    if-eqz v3, :cond_1

    move-object v4, v6

    check-cast v4, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->bytes:[B

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getBytes()[B

    move-result-object v4

    :goto_0
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->expectedFingerprint:[B

    if-eqz v3, :cond_2

    move-object v3, v6

    check-cast v3, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->expectedFingerprint:[B

    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getExpectedFingerprint()[B

    move-result-object v3

    :goto_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keyIdHex:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 82
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getKeyIdHex()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keyIdHex:Ljava/lang/String;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getKeyIdHex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keybaseName:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 83
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getKeybaseName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keybaseName:Ljava/lang/String;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getKeybaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->fbUsername:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 84
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getFbUsername()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_5
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->fbUsername:Ljava/lang/String;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getFbUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_7
    return v2

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getBytes()[B
    .locals 4

    move-object/16 v1, p0

    .line 34
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->bytes:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;--->getBytes()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getExpectedFingerprint()[B
    .locals 4

    move-object/16 v1, p0

    .line 41
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->expectedFingerprint:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;--->getExpectedFingerprint()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFbUsername()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 59
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->fbUsername:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;--->getFbUsername()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyIdHex()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 47
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keyIdHex:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;--->getKeyIdHex()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeybaseName()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 53
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keybaseName:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;--->getKeybaseName()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 7

    move-object/16 v4, p0

    .line 93
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 95
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->expectedFingerprint:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 97
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keyIdHex:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keyIdHex:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 99
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keybaseName:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keybaseName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 101
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->fbUsername:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->fbUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    return v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;--->hashCode()I"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParcelableKeyRing{bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->bytes:[B

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expectedFingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->expectedFingerprint:[B

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyIdHex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keyIdHex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keybaseName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->keybaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fbUsername="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;->fbUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
