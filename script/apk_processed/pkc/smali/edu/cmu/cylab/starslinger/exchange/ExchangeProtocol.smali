.class public Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;
.super Ljava/lang/Object;
.source "ExchangeProtocol.java"


# static fields
.field private static mRandom:Ljava/security/SecureRandom;


# instance fields
.field private commitList:[B

.field private curNodePos:I

.field private dataList:[B

.field private excgHalfKeys:[[B

.field private mCommMode:Ledu/cmu/cylab/starslinger/exchange/CommType;

.field private mCommitA:[B

.field private mCommitB:[B

.field private mCrypto:Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;

.field private mDHHalfKey:[B

.field private mDHSecretKey:[B

.field private mDecoyHash1:[B

.field private mDecoyHash2:[B

.field private mEncData:[B

.field private mGrpInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

.field private mHashHashMatch:[B

.field private mHashMatch:[B

.field private mHashSelection:I

.field private mHashVal:[B

.field private mHashWrong:[B

.field private mLatestServerVersion:I

.field private mLowestClientVersion:I

.field private mNonceMatch:[B

.field private mNonceWrong:[B

.field private mNumUsers:I

.field private mNumUsersCommit:I

.field private mNumUsersData:I

.field private mNumUsersKeyNodes:I

.field private mNumUsersMatchNonces:I

.field private mNumUsersSigs:I

.field private mPackedData:[B

.field private mRandomPosSrc:I

.field private mSigsInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

.field private mUsrId:I

.field private mUsrIdLink:I

.field private mVersion:I

.field private mynode:[B

.field private nonceList:[B

.field private orderedIDs:[I

.field private pos:I

.field private pub:[B

.field private sigsList:[B

.field private usridList:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Ledu/cmu/cylab/starslinger/exchange/CommType;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mEncData:[B

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersCommit:I

    .line 69
    iput v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersData:I

    .line 70
    iput v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersSigs:I

    .line 71
    iput v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersKeyNodes:I

    .line 72
    iput v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersMatchNonces:I

    .line 78
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    .line 79
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->commitList:[B

    .line 80
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->dataList:[B

    .line 81
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->sigsList:[B

    .line 82
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->nonceList:[B

    .line 84
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pub:[B

    .line 85
    move-object v2, v0

    check-cast v2, [[B

    iput-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->excgHalfKeys:[[B

    .line 86
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->orderedIDs:[I

    const/4 v2, -0x1

    .line 87
    iput v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pos:I

    .line 89
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mynode:[B

    .line 92
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommMode:Ledu/cmu/cylab/starslinger/exchange/CommType;

    const/16 p1, 0x20

    .line 94
    new-array v0, p1, [B

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNonceMatch:[B

    .line 95
    new-array p1, p1, [B

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNonceWrong:[B

    const/4 p1, 0x3

    .line 96
    new-array v0, p1, [B

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash1:[B

    .line 97
    new-array p1, p1, [B

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash2:[B

    .line 99
    iput v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    .line 100
    iput v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashSelection:I

    .line 102
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeConfig;->getMinVersionCode()I

    move-result p1

    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mVersion:I

    .line 103
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeConfig;->getMinVersionCode()I

    move-result p1

    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mLowestClientVersion:I

    .line 105
    iput v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersCommit:I

    .line 106
    iput v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersData:I

    .line 107
    iput v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersSigs:I

    .line 108
    iput v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersKeyNodes:I

    .line 109
    iput v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersMatchNonces:I

    .line 113
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mRandom:Ljava/security/SecureRandom;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p1

    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    return-void
.end method

.method private static appendServerBytes([B[B)[B
    .locals 5

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    return-object p0

    .line 748
    :cond_2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 749
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 750
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 751
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    add-int/2addr v2, v1

    if-le v2, v1, :cond_3

    .line 755
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    add-int/lit8 p0, p0, -0x4

    new-array p0, p0, [B

    .line 756
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    new-array v1, v1, [B

    .line 757
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 758
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1, v1, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 760
    array-length p1, p0

    array-length v0, v1

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 761
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 763
    array-length p1, p0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_3
    return-object p0
.end method

.method private static appendServerUserIds([I[B)[I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    .line 773
    new-array p0, v1, [I

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    :goto_0
    if-nez p0, :cond_3

    .line 778
    new-array p0, v1, [I

    .line 781
    :cond_3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 782
    array-length v2, p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    add-int/2addr v2, v3

    .line 784
    array-length v3, p0

    if-le v2, v3, :cond_7

    .line 785
    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 786
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_6

    .line 787
    array-length v4, p0

    if-ge v3, v4, :cond_4

    .line 788
    aget v4, p0, v3

    aput v4, v2, v3

    goto :goto_2

    .line 790
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v2, v3

    .line 791
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    if-gez v4, :cond_5

    return-object v0

    .line 794
    :cond_5
    new-array v5, v4, [B

    invoke-virtual {p1, v5, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-object v2

    :cond_7
    return-object p0
.end method

.method private assignDecoys([B)Z
    .locals 11

    .line 823
    new-instance v0, Ljava/util/BitSet;

    sget-object v1, Ledu/cmu/cylab/starslinger/exchange/WordList;->wordList:[Ledu/cmu/cylab/starslinger/exchange/WordPair;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 824
    new-instance v1, Ljava/util/BitSet;

    sget-object v2, Ledu/cmu/cylab/starslinger/exchange/WordList;->wordList:[Ledu/cmu/cylab/starslinger/exchange/WordPair;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    .line 827
    aget-byte v3, p1, v2

    invoke-static {v3}, Ledu/cmu/cylab/starslinger/exchange/WordList;->btoi(B)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/4 v3, 0x1

    .line 828
    aget-byte v4, p1, v3

    invoke-static {v4}, Ledu/cmu/cylab/starslinger/exchange/WordList;->btoi(B)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    const/4 v4, 0x2

    .line 829
    aget-byte v5, p1, v4

    invoke-static {v5}, Ledu/cmu/cylab/starslinger/exchange/WordList;->btoi(B)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 831
    iget-object v5, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mGrpInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    invoke-virtual {v5}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->getOrderedIDs()[I

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 835
    :goto_0
    iget v8, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-ge v6, v8, :cond_2

    .line 837
    aget v8, v5, v6

    iget v9, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    if-ne v8, v9, :cond_0

    const/4 v7, 0x1

    .line 845
    :cond_0
    new-array v8, v3, [B

    int-to-byte v9, v6

    aput-byte v9, v8, v2

    invoke-static {v8, p1}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash2([B[B)[B

    move-result-object v8

    .line 849
    iget-object v9, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash1:[B

    aget-byte v10, v8, v2

    invoke-static {v0, v10}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getNextClearByte(Ljava/util/BitSet;B)B

    move-result v10

    aput-byte v10, v9, v2

    .line 850
    iget-object v9, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash1:[B

    aget-byte v9, v9, v2

    invoke-static {v9}, Ledu/cmu/cylab/starslinger/exchange/WordList;->btoi(B)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    .line 851
    iget-object v9, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash1:[B

    aget-byte v10, v8, v3

    invoke-static {v1, v10}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getNextClearByte(Ljava/util/BitSet;B)B

    move-result v10

    aput-byte v10, v9, v3

    .line 852
    iget-object v9, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash1:[B

    aget-byte v9, v9, v3

    invoke-static {v9}, Ledu/cmu/cylab/starslinger/exchange/WordList;->btoi(B)I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/util/BitSet;->set(I)V

    .line 853
    iget-object v9, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash1:[B

    aget-byte v10, v8, v4

    invoke-static {v0, v10}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getNextClearByte(Ljava/util/BitSet;B)B

    move-result v10

    aput-byte v10, v9, v4

    .line 854
    iget-object v9, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash1:[B

    aget-byte v9, v9, v4

    invoke-static {v9}, Ledu/cmu/cylab/starslinger/exchange/WordList;->btoi(B)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    .line 857
    iget-object v9, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash2:[B

    const/4 v10, 0x3

    aget-byte v10, v8, v10

    invoke-static {v0, v10}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getNextClearByte(Ljava/util/BitSet;B)B

    move-result v10

    aput-byte v10, v9, v2

    .line 858
    iget-object v9, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash2:[B

    aget-byte v9, v9, v2

    invoke-static {v9}, Ledu/cmu/cylab/starslinger/exchange/WordList;->btoi(B)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    .line 859
    iget-object v9, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash2:[B

    const/4 v10, 0x4

    aget-byte v10, v8, v10

    invoke-static {v1, v10}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getNextClearByte(Ljava/util/BitSet;B)B

    move-result v10

    aput-byte v10, v9, v3

    .line 860
    iget-object v9, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash2:[B

    aget-byte v9, v9, v3

    invoke-static {v9}, Ledu/cmu/cylab/starslinger/exchange/WordList;->btoi(B)I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/util/BitSet;->set(I)V

    .line 861
    iget-object v9, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash2:[B

    const/4 v10, 0x5

    aget-byte v8, v8, v10

    invoke-static {v0, v8}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getNextClearByte(Ljava/util/BitSet;B)B

    move-result v8

    aput-byte v8, v9, v4

    .line 862
    iget-object v8, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash2:[B

    aget-byte v8, v8, v4

    invoke-static {v8}, Ledu/cmu/cylab/starslinger/exchange/WordList;->btoi(B)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    if-eqz v7, :cond_1

    return v3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    return v2
.end method

.method private decryptNonces(Ledu/cmu/cylab/starslinger/exchange/GroupData;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 806
    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->getOrderedIDs()[I

    move-result-object v0

    .line 807
    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->sortAllMatchNonce()[[B

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 808
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 809
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCrypto:Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;

    aget-object v4, p1, v2

    iget-object v5, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDHSecretKey:[B

    invoke-virtual {v3, v4, v5}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->decryptNonce([B[B)[B

    move-result-object v3

    .line 810
    array-length v4, v3

    add-int/lit8 v4, v4, 0xc

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    aget v5, v0, v2

    .line 811
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 812
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v1, v3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerBytes([B[B)[B

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private endValidationCommit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/AllMembersMustUpgradeException;,
            Ledu/cmu/cylab/starslinger/exchange/HashValidationException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->commitList:[B

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mPackedData:[B

    .line 263
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mLowestClientVersion:I

    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeConfig;->getMinVersionCode()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 264
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/AllMembersMustUpgradeException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/AllMembersMustUpgradeException;-><init>()V

    throw v0

    .line 267
    :cond_0
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/GroupData;

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    invoke-direct {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;-><init>(I)V

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mGrpInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    .line 268
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mGrpInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mPackedData:[B

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->save_ID_data([B)I

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/HashValidationException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/HashValidationException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method private endValidationData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;,
            Ledu/cmu/cylab/starslinger/exchange/HashValidationException;,
            Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException;,
            Ledu/cmu/cylab/starslinger/exchange/AssignDecoysException;
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 345
    :goto_0
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 346
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    aget v3, v3, v0

    iget v4, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrIdLink:I

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 348
    :cond_0
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    aget v3, v3, v0

    if-ge v3, v2, :cond_1

    .line 349
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    aget v2, v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 352
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;-><init>()V

    throw v0

    .line 354
    :cond_3
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrIdLink:I

    if-eq v2, v0, :cond_4

    .line 355
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;-><init>()V

    throw v0

    .line 358
    :cond_4
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->dataList:[B

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mPackedData:[B

    .line 362
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/GroupData;

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    invoke-direct {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;-><init>(I)V

    .line 363
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mPackedData:[B

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->save_ID_data([B)I

    move-result v1

    if-eqz v1, :cond_5

    .line 364
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/HashValidationException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/HashValidationException;-><init>()V

    throw v0

    .line 367
    :cond_5
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mGrpInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    invoke-virtual {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->isDecommitUpdate(Ledu/cmu/cylab/starslinger/exchange/GroupData;)I

    move-result v0

    if-gez v0, :cond_6

    .line 370
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException;-><init>()V

    throw v0

    .line 374
    :cond_6
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mGrpInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mPackedData:[B

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->save_data([B)I

    .line 377
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mGrpInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->getHash()[B

    move-result-object v0

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashVal:[B

    .line 380
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashVal:[B

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->assignDecoys([B)Z

    move-result v0

    if-nez v0, :cond_7

    .line 381
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/AssignDecoysException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/AssignDecoysException;-><init>()V

    throw v0

    :cond_7
    return-void
.end method

.method private endValidationMatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ledu/cmu/cylab/starslinger/exchange/HashValidationException;,
            Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException;
        }
    .end annotation

    .line 663
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->nonceList:[B

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mPackedData:[B

    .line 666
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/GroupData;

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    invoke-direct {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;-><init>(I)V

    .line 667
    new-instance v1, Ledu/cmu/cylab/starslinger/exchange/GroupData;

    iget v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    invoke-direct {v1, v2}, Ledu/cmu/cylab/starslinger/exchange/GroupData;-><init>(I)V

    .line 668
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mPackedData:[B

    invoke-virtual {v1, v2}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->save_ID_data([B)I

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/HashValidationException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/HashValidationException;-><init>()V

    throw v0

    .line 672
    :cond_0
    invoke-direct {p0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->decryptNonces(Ledu/cmu/cylab/starslinger/exchange/GroupData;)[B

    move-result-object v1

    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mPackedData:[B

    .line 676
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mPackedData:[B

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->save_ID_data([B)I

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/HashValidationException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/HashValidationException;-><init>()V

    throw v0

    .line 680
    :cond_1
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mSigsInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    invoke-virtual {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->isDecommitUpdate(Ledu/cmu/cylab/starslinger/exchange/GroupData;)I

    move-result v0

    if-gez v0, :cond_2

    .line 682
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException;-><init>()V

    throw v0

    .line 686
    :cond_2
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mSigsInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mPackedData:[B

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->save_data([B)I

    return-void
.end method

.method private endValidationSigs()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/HashValidationException;,
            Ledu/cmu/cylab/starslinger/exchange/OtherGroupCommitDifferException;,
            Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->sigsList:[B

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mPackedData:[B

    .line 466
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/GroupData;

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    invoke-direct {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;-><init>(I)V

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mSigsInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    .line 467
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mSigsInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mPackedData:[B

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->save_ID_data([B)I

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/HashValidationException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/HashValidationException;-><init>()V

    throw v0

    .line 471
    :cond_0
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mGrpInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mSigsInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->isSignatureUpdate(Ledu/cmu/cylab/starslinger/exchange/GroupData;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 475
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/OtherGroupCommitDifferException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/OtherGroupCommitDifferException;-><init>()V

    throw v0

    :cond_1
    if-gez v0, :cond_2

    .line 480
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException;-><init>()V

    throw v0

    :cond_2
    return-void
.end method

.method private static getNextClearByte(Ljava/util/BitSet;B)B
    .locals 1

    .line 872
    invoke-static {p1}, Ledu/cmu/cylab/starslinger/exchange/WordList;->btoi(B)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p1

    .line 873
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/WordList;->wordList:[Ledu/cmu/cylab/starslinger/exchange/WordPair;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 874
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p1

    .line 875
    :cond_0
    invoke-static {p1}, Ledu/cmu/cylab/starslinger/exchange/WordList;->itob(I)B

    move-result p0

    return p0
.end method


# virtual methods
.method public endProtocol()[[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 700
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mGrpInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->sortOthersDataNew(I)[[B

    move-result-object v0

    .line 703
    array-length v1, v0

    new-array v1, v1, [[B

    .line 704
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mSigsInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    iget v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    invoke-virtual {v2, v3}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->sortOthersMatchNonce(I)[[B

    move-result-object v2

    const/4 v3, 0x0

    .line 705
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 706
    aget-object v4, v2, v3

    .line 707
    iget-object v5, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCrypto:Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6, v4}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->decryptData([B[B)[B

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getDecoyHash(I)[B
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 911
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash1:[B

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 913
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash2:[B

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHash()[B
    .locals 1

    .line 919
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashVal:[B

    return-object v0
.end method

.method public getNumUsers()I
    .locals 1

    .line 923
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    return v0
.end method

.method public getNumUsersCommit()I
    .locals 1

    .line 955
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersCommit:I

    return v0
.end method

.method public getNumUsersData()I
    .locals 1

    .line 959
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersData:I

    return v0
.end method

.method public getNumUsersKeyNodes()I
    .locals 1

    .line 967
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersKeyNodes:I

    return v0
.end method

.method public getNumUsersMatchNonces()I
    .locals 1

    .line 971
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersMatchNonces:I

    return v0
.end method

.method public getNumUsersSigs()I
    .locals 1

    .line 963
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersSigs:I

    return v0
.end method

.method public getRandomPos(I)I
    .locals 4

    const/4 v0, 0x1

    .line 975
    new-array v0, v0, [B

    .line 976
    sget-object v1, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    .line 977
    aget-byte v0, v0, v1

    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/WordList;->btoi(B)I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mRandomPosSrc:I

    .line 978
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mRandomPosSrc:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    div-double/2addr v0, v2

    int-to-double v2, p1

    mul-double v0, v0, v2

    .line 980
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public getStatusBanner(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashVal:[B

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const/4 p1, 0x3

    .line 881
    new-array v1, p1, [B

    .line 882
    iget v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashSelection:I

    if-nez v3, :cond_0

    .line 883
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashVal:[B

    goto :goto_0

    .line 884
    :cond_0
    iget v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashSelection:I

    if-ne v3, v2, :cond_1

    .line 885
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash1:[B

    goto :goto_0

    .line 886
    :cond_1
    iget v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashSelection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 887
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDecoyHash2:[B

    .line 889
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 891
    invoke-static {v1, p1}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getWordList([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-static {v1, p1}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getNumbersList([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 894
    :cond_3
    invoke-static {v1, p1}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getNumbersList([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-static {v1, p1}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getWordList([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 897
    :cond_4
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-lez v1, :cond_5

    .line 898
    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->choice_NumUsers:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrIdLink:I

    if-lez v1, :cond_5

    const-string v1, ", "

    .line 900
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->label_UserIdHint:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    .line 901
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrIdLink:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 904
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserId()I
    .locals 1

    .line 935
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    return v0
.end method

.method public getUserIdLink()I
    .locals 1

    .line 951
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrIdLink:I

    return v0
.end method

.method public inMessageAssign([B)Z
    .locals 1

    .line 177
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mLatestServerVersion:I

    .line 180
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    if-lez p1, :cond_0

    .line 182
    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public inMessageCommit([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;,
            Ledu/cmu/cylab/starslinger/exchange/AllMembersMustUpgradeException;,
            Ledu/cmu/cylab/starslinger/exchange/HashValidationException;
        }
    .end annotation

    .line 230
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mLatestServerVersion:I

    .line 235
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mLowestClientVersion:I

    .line 238
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    .line 239
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersCommit:I

    .line 241
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    new-array v0, v0, [B

    .line 242
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 243
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersCommit:I

    if-lez p1, :cond_0

    .line 244
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerUserIds([I[B)[I

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    .line 245
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->commitList:[B

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerBytes([B[B)[B

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->commitList:[B

    .line 247
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersCommit:I

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-le p1, v0, :cond_0

    .line 248
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;

    invoke-direct {p1}, Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;-><init>()V

    throw p1

    .line 252
    :cond_0
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersCommit:I

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-ne p1, v0, :cond_1

    .line 253
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->endValidationCommit()V

    :cond_1
    return-void
.end method

.method public inMessageData([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;,
            Ledu/cmu/cylab/starslinger/exchange/HashValidationException;,
            Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException;,
            Ledu/cmu/cylab/starslinger/exchange/AssignDecoysException;
        }
    .end annotation

    .line 315
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 319
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mLatestServerVersion:I

    .line 322
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersData:I

    .line 324
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    .line 325
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 326
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersData:I

    if-lez p1, :cond_0

    .line 327
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerUserIds([I[B)[I

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    .line 328
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->dataList:[B

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerBytes([B[B)[B

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->dataList:[B

    .line 330
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersData:I

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-le p1, v0, :cond_0

    .line 331
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;

    invoke-direct {p1}, Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;-><init>()V

    throw p1

    .line 335
    :cond_0
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersData:I

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-ne p1, v0, :cond_1

    .line 336
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->endValidationData()V

    :cond_1
    return-void
.end method

.method public inMessageMatch([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ledu/cmu/cylab/starslinger/exchange/HashValidationException;,
            Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException;
        }
    .end annotation

    .line 633
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 637
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mLatestServerVersion:I

    .line 640
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersMatchNonces:I

    .line 642
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    .line 643
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 644
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersMatchNonces:I

    if-lez p1, :cond_0

    .line 645
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerUserIds([I[B)[I

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    .line 646
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->nonceList:[B

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerBytes([B[B)[B

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->nonceList:[B

    .line 648
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersMatchNonces:I

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-le p1, v0, :cond_0

    .line 649
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;

    invoke-direct {p1}, Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;-><init>()V

    throw p1

    .line 653
    :cond_0
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersMatchNonces:I

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-ne p1, v0, :cond_1

    .line 654
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->endValidationMatch()V

    :cond_1
    return-void
.end method

.method public inMessageNode([B)V
    .locals 4

    .line 548
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pos:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 549
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mLatestServerVersion:I

    .line 554
    :cond_0
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pos:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mynode:[B

    if-nez v0, :cond_1

    .line 555
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 557
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mLatestServerVersion:I

    .line 559
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersKeyNodes:I

    .line 561
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersKeyNodes:I

    if-ne v0, v2, :cond_2

    .line 562
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 564
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    new-array v0, v0, [B

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mynode:[B

    .line 565
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mynode:[B

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 568
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mynode:[B

    if-eqz p1, :cond_2

    .line 569
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pos:I

    add-int/2addr p1, v2

    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->curNodePos:I

    .line 570
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mynode:[B

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pub:[B

    goto :goto_0

    .line 576
    :cond_1
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->excgHalfKeys:[[B

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->curNodePos:I

    aget-object p1, p1, v0

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pub:[B

    .line 577
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->curNodePos:I

    add-int/2addr p1, v2

    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->curNodePos:I

    :cond_2
    :goto_0
    return-void
.end method

.method public inMessageSig([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;,
            Ledu/cmu/cylab/starslinger/exchange/HashValidationException;,
            Ledu/cmu/cylab/starslinger/exchange/OtherGroupCommitDifferException;,
            Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException;
        }
    .end annotation

    .line 433
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mLatestServerVersion:I

    .line 440
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersSigs:I

    .line 442
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    .line 443
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 444
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersSigs:I

    if-lez p1, :cond_0

    .line 445
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerUserIds([I[B)[I

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    .line 446
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->sigsList:[B

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerBytes([B[B)[B

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->sigsList:[B

    .line 448
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersSigs:I

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-le p1, v0, :cond_0

    .line 449
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;

    invoke-direct {p1}, Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException;-><init>()V

    throw p1

    .line 453
    :cond_0
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersSigs:I

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-ne p1, v0, :cond_1

    .line 454
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->endValidationSigs()V

    :cond_1
    return-void
.end method

.method public isCommitPhaseComplete()Z
    .locals 2

    .line 713
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersCommit:I

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDataPhaseComplete()Z
    .locals 2

    .line 717
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersData:I

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMatchPhaseComplete()Z
    .locals 2

    .line 733
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersMatchNonces:I

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNodePhaseComplete()Z
    .locals 2

    .line 729
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->curNodePos:I

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSigsBadPhaseComplete()Z
    .locals 1

    .line 721
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersSigs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSigsPhaseComplete()Z
    .locals 2

    .line 725
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersSigs:I

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nodeMustBackoff()Z
    .locals 2

    .line 582
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pos:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mynode:[B

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public nodesFinal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCrypto:Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pub:[B

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->createFinalKey([B)[B

    move-result-object v0

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDHSecretKey:[B

    return-void
.end method

.method public nodesPrep()V
    .locals 5

    const/4 v0, 0x0

    .line 485
    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersKeyNodes:I

    const/4 v1, 0x0

    .line 486
    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pub:[B

    .line 487
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mGrpInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    invoke-virtual {v2}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->sortAllHalfKeys()[[B

    move-result-object v2

    iput-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->excgHalfKeys:[[B

    .line 488
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mGrpInfo:Ledu/cmu/cylab/starslinger/exchange/GroupData;

    invoke-virtual {v2}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->getOrderedIDs()[I

    move-result-object v2

    iput-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->orderedIDs:[I

    const/4 v2, -0x1

    .line 489
    iput v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pos:I

    const/4 v2, 0x0

    .line 491
    :goto_0
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->orderedIDs:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 492
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->orderedIDs:[I

    aget v3, v3, v2

    iget v4, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    if-ne v3, v4, :cond_0

    .line 493
    iput v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pos:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    :cond_1
    :goto_1
    iget v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pos:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 500
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->excgHalfKeys:[[B

    iget v4, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pos:I

    if-nez v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    aget-object v0, v2, v0

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pub:[B

    .line 503
    :cond_3
    iput v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->curNodePos:I

    .line 504
    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mynode:[B

    return-void
.end method

.method public outMessageAssign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/NoDataToExchangeException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitB:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitB:[B

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitB:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 169
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 170
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitB:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 165
    :cond_1
    :goto_0
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/NoDataToExchangeException;

    invoke-direct {v0}, Ledu/cmu/cylab/starslinger/exchange/NoDataToExchangeException;-><init>()V

    throw v0
.end method

.method public outMessageCommit(Z)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/NoDataToExchangeException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitB:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitB:[B

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 201
    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    .line 202
    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->commitList:[B

    .line 204
    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersCommit:I

    .line 205
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mVersion:I

    iput v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mLowestClientVersion:I

    .line 206
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitB:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    .line 207
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitB:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitB:[B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 210
    iput v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersCommit:I

    .line 211
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v2, v3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerUserIds([I[B)[I

    move-result-object v2

    iput-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    .line 212
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->commitList:[B

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v2, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerBytes([B[B)[B

    move-result-object v1

    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->commitList:[B

    .line 214
    :cond_1
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitB:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 216
    iget v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 217
    iget v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 218
    iget v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrIdLink:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 219
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 220
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 221
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 223
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitB:[B

    goto :goto_1

    :cond_3
    new-array p1, v0, [B

    :goto_1
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    .line 198
    :cond_4
    :goto_2
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/NoDataToExchangeException;

    invoke-direct {p1}, Ledu/cmu/cylab/starslinger/exchange/NoDataToExchangeException;-><init>()V

    throw p1
.end method

.method public outMessageData(Z)[B
    .locals 7

    const/4 v0, 0x0

    .line 279
    new-array v1, v0, [B

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 281
    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    .line 282
    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->dataList:[B

    .line 283
    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersData:I

    .line 285
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitA:[B

    array-length v1, v1

    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDHHalfKey:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mEncData:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 287
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitA:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 288
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDHHalfKey:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 289
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mEncData:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 290
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 292
    array-length v2, v1

    add-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    .line 293
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget v5, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 296
    iput v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersData:I

    .line 297
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v3, v4}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerUserIds([I[B)[I

    move-result-object v3

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    .line 298
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->dataList:[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v3, v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerBytes([B[B)[B

    move-result-object v2

    iput-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->dataList:[B

    .line 301
    :cond_0
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0xc

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 302
    iget v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 303
    iget v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 304
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 305
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    .line 306
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    .line 308
    :cond_2
    new-array v1, v0, [B

    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 310
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method public outMessageMatch(Z)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 600
    new-array v1, v0, [B

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 602
    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    .line 603
    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->nonceList:[B

    .line 604
    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersMatchNonces:I

    .line 607
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCrypto:Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;

    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNonceMatch:[B

    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDHSecretKey:[B

    invoke-virtual {v1, v2, v3}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->encryptNonce([B[B)[B

    move-result-object v1

    .line 609
    array-length v2, v1

    add-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    .line 610
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget v5, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 613
    iput v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersMatchNonces:I

    .line 614
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v3, v4}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerUserIds([I[B)[I

    move-result-object v3

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    .line 615
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->nonceList:[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v3, v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerBytes([B[B)[B

    move-result-object v2

    iput-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->nonceList:[B

    .line 617
    :cond_0
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0xc

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 618
    iget v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 619
    iget v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 620
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 621
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    .line 622
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    .line 624
    :cond_2
    new-array v1, v0, [B

    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 626
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method public outMessageNode()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 516
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 519
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pos:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mynode:[B

    if-eqz v1, :cond_1

    .line 521
    :cond_0
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCrypto:Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;

    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pub:[B

    invoke-virtual {v1, v3}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->createNodeKey([B)[B

    move-result-object v1

    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pub:[B

    .line 525
    :cond_1
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pos:I

    if-ge v1, v2, :cond_2

    .line 527
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pub:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 528
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 529
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 530
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->orderedIDs:[I

    iget v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->curNodePos:I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 531
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pub:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 532
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pub:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 536
    :cond_2
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->pos:I

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mynode:[B

    if-nez v1, :cond_3

    const/16 v0, 0x8

    .line 537
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 538
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 539
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 542
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public outMessageSig(ZZ)[B
    .locals 6

    const/4 v0, 0x0

    .line 391
    new-array v1, v0, [B

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 393
    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    .line 394
    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->sigsList:[B

    .line 395
    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersSigs:I

    const/16 v1, 0x40

    if-eqz p2, :cond_0

    .line 399
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 401
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashMatch:[B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashWrong:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 402
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    :goto_0
    move-object v1, p2

    goto :goto_1

    .line 405
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 407
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashHashMatch:[B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNonceWrong:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 408
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    goto :goto_0

    .line 411
    :goto_1
    array-length p2, v1

    add-int/lit8 p2, p2, 0xc

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v2, 0x1

    .line 412
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 415
    iput v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsersSigs:I

    .line 416
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v2, v3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerUserIds([I[B)[I

    move-result-object v2

    iput-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    .line 417
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->sigsList:[B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-static {v2, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->appendServerBytes([B[B)[B

    move-result-object p2

    iput-object p2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->sigsList:[B

    .line 419
    :cond_1
    iget-object p2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0xc

    array-length v2, v1

    add-int/2addr p2, v2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 420
    iget v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mVersion:I

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 421
    iget v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrId:I

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 422
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    array-length v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 423
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->usridList:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 424
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_3

    .line 426
    :cond_3
    new-array v1, v0, [B

    :goto_3
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 428
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method public setHashSelection(I)V
    .locals 0

    .line 989
    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashSelection:I

    return-void
.end method

.method public setNumUsers(I)V
    .locals 0

    .line 927
    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    return-void
.end method

.method public setUserIdLink(I)V
    .locals 0

    .line 947
    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mUsrIdLink:I

    return-void
.end method

.method public startProtocol(I[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ledu/cmu/cylab/starslinger/exchange/NoDataToExchangeException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommMode:Ledu/cmu/cylab/starslinger/exchange/CommType;

    sget-object v1, Ledu/cmu/cylab/starslinger/exchange/CommType;->DIRECT:Ledu/cmu/cylab/starslinger/exchange/CommType;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p2, :cond_1

    .line 132
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/NoDataToExchangeException;

    invoke-direct {p1}, Ledu/cmu/cylab/starslinger/exchange/NoDataToExchangeException;-><init>()V

    throw p1

    .line 135
    :cond_1
    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNumUsers:I

    .line 138
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mRandom:Ljava/security/SecureRandom;

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNonceMatch:[B

    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 139
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mRandom:Ljava/security/SecureRandom;

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNonceWrong:[B

    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 142
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;

    invoke-direct {p1}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;-><init>()V

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCrypto:Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;

    .line 143
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCrypto:Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNonceMatch:[B

    invoke-virtual {p1, p2, v0}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->encryptData([B[B)[B

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mEncData:[B

    .line 146
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNonceWrong:[B

    invoke-static {p1}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash([B)[B

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashWrong:[B

    .line 147
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mNonceMatch:[B

    invoke-static {p1}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash([B)[B

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashMatch:[B

    .line 148
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashMatch:[B

    invoke-static {p1}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash([B)[B

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashHashMatch:[B

    .line 149
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashHashMatch:[B

    iget-object p2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mHashWrong:[B

    invoke-static {p1, p2}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash2([B[B)[B

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitA:[B

    .line 152
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCrypto:Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->generateDHPublicKey()[B

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDHHalfKey:[B

    .line 153
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitA:[B

    iget-object p2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mDHHalfKey:[B

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mEncData:[B

    invoke-static {p1, p2, v0}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash3([B[B[B)[B

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->mCommitB:[B

    const/4 p1, 0x1

    return p1
.end method
