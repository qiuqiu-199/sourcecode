.class public Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
.super Ljava/lang/Object;
.source "RequiredInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;,
        Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;,
        Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;,
        Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mInputData:[[B

.field private mMasterKeyIds:[J

.field public final mSignAlgos:[I

.field public mSignatureTime:Ljava/util/Date;

.field public mSkipCaching:Z

.field private mSubKeyIds:[J

.field public final mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 250
    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 78
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSkipCaching:Z

    .line 79
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->values()[Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    .line 82
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 85
    new-array v5, v4, [[B

    iput-object v5, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    if-ne v1, v2, :cond_0

    .line 87
    new-array v1, v4, [I

    iput-object v1, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignAlgos:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    .line 89
    iget-object v5, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    aput-object v6, v5, v1

    .line 90
    iget-object v5, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignAlgos:[I

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iput-object v3, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignAlgos:[I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    .line 95
    iget-object v5, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_1
    move-object v1, v3

    check-cast v1, [[B

    iput-object v1, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    .line 100
    iput-object v3, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignAlgos:[I

    .line 103
    :cond_2
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    iput-object v1, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignatureTime:Ljava/util/Date;

    .line 104
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v8}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v3

    :goto_3
    iput-object v1, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mMasterKeyIds:[J

    .line 105
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v8}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    :cond_5
    iput-object v3, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSubKeyIds:[J

    .line 106
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    const/4 v0, 0x1

    :cond_6
    iput-boolean v0, v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSkipCaching:Z

    return-void

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    move-object/16 v12, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 74
    new-array v4, v2, [J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v4, v1

    move-object v8, v4

    goto :goto_0

    :cond_0
    move-object v8, v0

    :goto_0
    if-eqz p3, :cond_1

    new-array v0, v2, [J

    .line 75
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    :cond_1
    move-object v9, v0

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, p0

    move-object v7, p1

    .line 74
    invoke-direct/range {v3 .. v9}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;[J[J)V

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;---><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$1;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method private constructor <init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;[J[J)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    .line 63
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSkipCaching:Z

    .line 64
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    .line 65
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    .line 66
    iput-object p0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignAlgos:[I

    .line 67
    iput-object p1, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignatureTime:Ljava/util/Date;

    .line 68
    iput-object p2, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mMasterKeyIds:[J

    .line 69
    iput-object p3, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSubKeyIds:[J

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;---><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;[J[J)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;[J[JLorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$1;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;[J[J)V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)[J
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mMasterKeyIds:[J

    return-object p0
.end method

.method public static createOrbotRequiredOperation()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 11

    .line 132
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ENABLE_ORBOT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, [[B

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v7

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createOrbotRequiredOperation()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRequiredAuthenticationPassphrase(JJ)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 11

    move-wide/16 v8, p0

    move-wide/16 v10, p2

    .line 164
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE_AUTH:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, [[B

    .line 165
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, p0}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v7

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createRequiredAuthenticationPassphrase(JJ)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRequiredBackupCode()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 11

    .line 186
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->BACKUP_CODE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, [[B

    move-object v5, v0

    check-cast v5, [J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;[J[J)V

    return-object v7

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createRequiredBackupCode()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRequiredDecryptPassphrase(JJ)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 11

    move-wide/16 v8, p0

    move-wide/16 v10, p2

    .line 176
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, [[B

    .line 177
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, p0}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v7

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createRequiredDecryptPassphrase(JJ)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRequiredNumeric9x4(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 12

    move-object/16 v9, p0

    const/4 v0, 0x0

    if-eqz v9, :cond_0

    const/4 v1, 0x1

    .line 191
    new-array v1, v1, [[B

    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    aput-object v9, v1, v2

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    check-cast v1, [[B

    goto :goto_0

    .line 192
    :goto_1
    new-instance v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->NUMERIC_9X4:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    check-cast v7, [J

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;[J[J)V

    return-object v9

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createRequiredNumeric9x4(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRequiredNumeric9x4Autocrypt(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 12

    move-object/16 v9, p0

    const/4 v0, 0x0

    if-eqz v9, :cond_0

    const/4 v1, 0x1

    .line 197
    new-array v1, v1, [[B

    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    aput-object v9, v1, v2

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    check-cast v1, [[B

    goto :goto_0

    .line 198
    :goto_1
    new-instance v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->NUMERIC_9X4_AUTOCRYPT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    check-cast v7, [J

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;[J[J)V

    return-object v9

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createRequiredNumeric9x4Autocrypt(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRequiredPassphrase(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 11

    move-object/16 v8, p0

    .line 204
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, [[B

    iget-object v4, v8, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignatureTime:Ljava/util/Date;

    iget-object v5, v8, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mMasterKeyIds:[J

    iget-object v6, v8, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSubKeyIds:[J

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;[J[J)V

    return-object v7

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createRequiredPassphrase(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRequiredSignPassphrase(JJLjava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 11

    move-wide/16 v8, p0

    move-wide/16 v10, p2

    move-object/16 p1, p4

    .line 170
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, [[B

    .line 171
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, p0}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v7

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createRequiredSignPassphrase(JJLjava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRequiredSymmetricPassphrase()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 11

    .line 181
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE_SYMMETRIC:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, [[B

    move-object v5, v0

    check-cast v5, [J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;[J[J)V

    return-object v7

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createRequiredSymmetricPassphrase()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRetryUploadOperation()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 11

    .line 127
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->UPLOAD_FAIL_RETRY:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, [[B

    const-wide/16 v3, 0x0

    .line 128
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v7

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createRetryUploadOperation()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createSecurityTokenAuthenticationOperation(JJ[BI)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 11

    move-wide/16 v8, p0

    move-wide/16 v10, p2

    move-object/16 p1, p4

    move/16 p2, p5

    .line 146
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_AUTH:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v0, 0x1

    new-array v2, v0, [[B

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-array p1, v0, [I

    aput p2, p1, v3

    .line 148
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, p0}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v7

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createSecurityTokenAuthenticationOperation(JJ[BI)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createSecurityTokenDecryptOperation(JJ[B)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 11

    move-wide/16 v8, p0

    move-wide/16 v10, p2

    move-object/16 p1, p4

    .line 153
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_DECRYPT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v0, 0x1

    new-array v2, v0, [[B

    const/4 v0, 0x0

    aput-object p1, v2, v0

    .line 154
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, p0}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v7

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createSecurityTokenDecryptOperation(JJ[B)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createSecurityTokenReset()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 11

    .line 158
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_RESET_CARD:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, [[B

    move-object v5, v0

    check-cast v5, [J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;[J[J)V

    return-object v7

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createSecurityTokenReset()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createSecurityTokenSignOperation(JJ[BILjava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 11

    move-wide/16 v8, p0

    move-wide/16 v10, p2

    move-object/16 p1, p4

    move/16 p2, p5

    move-object/16 p3, p6

    .line 138
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_SIGN:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v0, 0x1

    new-array v2, v0, [[B

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-array p1, v0, [I

    aput p2, p1, v3

    .line 140
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, p0}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, v7

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v7

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->createSecurityTokenSignOperation(JJ[BILjava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyId()Ljava/lang/Long;
    .locals 6

    move-object/16 v3, p0

    .line 111
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mMasterKeyIds:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mMasterKeyIds:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->getMasterKeyId()Ljava/lang/Long;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyIds()[J
    .locals 4

    move-object/16 v1, p0

    .line 119
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mMasterKeyIds:[J

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->getMasterKeyIds()[J"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPassphraseBegin()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 39
    new-instance v0, Ljava/lang/String;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->getPassphraseBegin()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSubKeyId()Ljava/lang/Long;
    .locals 6

    move-object/16 v3, p0

    .line 115
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSubKeyIds:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSubKeyIds:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->getSubKeyId()Ljava/lang/Long;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSubKeyIds()[J
    .locals 4

    move-object/16 v1, p0

    .line 123
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSubKeyIds:[J

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->getSubKeyIds()[J"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasPassphraseBegin()Z
    .locals 7

    move-object/16 v4, p0

    .line 35
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    array-length v0, v0

    if-ne v0, v2, :cond_0

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    aget-object v0, v0, v1

    array-length v0, v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->hasPassphraseBegin()Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    .line 215
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v6, :cond_2

    .line 217
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignAlgos:[I

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    .line 219
    :goto_1
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    array-length v2, v2

    if-ge v6, v2, :cond_3

    .line 220
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    aget-object v2, v2, v6

    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 221
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignAlgos:[I

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignAlgos:[I

    aget v2, v2, v6

    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    :cond_3
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignatureTime:Ljava/util/Date;

    if-eqz v6, :cond_4

    .line 229
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignatureTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_2

    .line 232
    :cond_4
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    :goto_2
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mMasterKeyIds:[J

    if-eqz v6, :cond_5

    .line 235
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mMasterKeyIds:[J

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_3

    .line 238
    :cond_5
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    :goto_3
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSubKeyIds:[J

    if-eqz v6, :cond_6

    .line 241
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSubKeyIds:[J

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_4

    .line 244
    :cond_6
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    :goto_4
    iget-boolean v6, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSkipCaching:Z

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
