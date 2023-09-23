.class public Lorg/openintents/openpgp/OpenPgpSignatureResult;
.super Ljava/lang/Object;
.source "OpenPgpSignatureResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;,
        Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/openintents/openpgp/OpenPgpSignatureResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final autocryptPeerentityResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

.field private final confirmedUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyId:J

.field private final primaryUserId:Ljava/lang/String;

.field private final result:I

.field private final senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

.field private final signatureTimestamp:Ljava/util/Date;

.field private final userIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 182
    new-instance v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$1;

    invoke-direct {v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult$1;-><init>()V

    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;JLjava/util/List;Ljava/util/List;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/lang/Boolean;Ljava/util/Date;Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Date;",
            "Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    .line 68
    iput-object p2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->primaryUserId:Ljava/lang/String;

    .line 69
    iput-wide p3, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->keyId:J

    .line 70
    iput-object p5, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/List;

    .line 71
    iput-object p6, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->confirmedUserIds:Ljava/util/List;

    .line 72
    iput-object p7, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 73
    iput-object p9, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->signatureTimestamp:Ljava/util/Date;

    .line 74
    iput-object p10, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->autocryptPeerentityResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;I)V
    .locals 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->primaryUserId:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->keyId:J

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/List;

    goto :goto_0

    .line 87
    :cond_0
    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/List;

    :goto_0
    const/4 v1, 0x2

    if-le p2, v1, :cond_1

    .line 91
    sget-object v1, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->values:[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    sget-object v2, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->UNKNOWN:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    invoke-static {p1, v1, v2}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->readEnumWithNullAndFallback(Landroid/os/Parcel;[Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    iput-object v1, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->confirmedUserIds:Ljava/util/List;

    goto :goto_1

    .line 95
    :cond_1
    sget-object v1, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->UNKNOWN:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    iput-object v1, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 96
    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->confirmedUserIds:Ljava/util/List;

    :goto_1
    const/4 v1, 0x3

    if-le p2, v1, :cond_3

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->signatureTimestamp:Ljava/util/Date;

    goto :goto_3

    .line 102
    :cond_3
    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->signatureTimestamp:Ljava/util/Date;

    :goto_3
    const/4 v1, 0x4

    if-le p2, v1, :cond_4

    .line 106
    sget-object p2, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->values:[Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    invoke-static {p1, p2, v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->readEnumWithNullAndFallback(Landroid/os/Parcel;[Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->autocryptPeerentityResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    goto :goto_4

    .line 108
    :cond_4
    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->autocryptPeerentityResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    :goto_4
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;ILorg/openintents/openpgp/OpenPgpSignatureResult$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static createWithInvalidSignature()Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 12

    .line 230
    new-instance v11, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(ILjava/lang/String;JLjava/util/List;Ljava/util/List;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/lang/Boolean;Ljava/util/Date;Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;)V

    return-object v11
.end method

.method public static createWithKeyMissing(JLjava/util/Date;)Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 12

    .line 226
    new-instance v11, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-wide v3, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v10}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(ILjava/lang/String;JLjava/util/List;Ljava/util/List;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/lang/Boolean;Ljava/util/Date;Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;)V

    return-object v11
.end method

.method public static createWithNoSignature()Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 12

    .line 222
    new-instance v11, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(ILjava/lang/String;JLjava/util/List;Ljava/util/List;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/lang/Boolean;Ljava/util/Date;Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;)V

    return-object v11
.end method

.method public static createWithValidSignature(ILjava/lang/String;JLjava/util/List;Ljava/util/List;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/util/Date;)Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;",
            "Ljava/util/Date;",
            ")",
            "Lorg/openintents/openpgp/OpenPgpSignatureResult;"
        }
    .end annotation

    move v1, p0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    new-instance v11, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(ILjava/lang/String;JLjava/util/List;Ljava/util/List;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/lang/Boolean;Ljava/util/Date;Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;)V

    return-object v11

    .line 215
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can only use this method for valid types of signatures"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readEnumWithNullAndFallback(Landroid/os/Parcel;[Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Landroid/os/Parcel;",
            "[TT;TT;)TT;"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 250
    :cond_0
    array-length v0, p1

    if-lt p0, v0, :cond_1

    return-object p2

    .line 253
    :cond_1
    aget-object p0, p1, p0

    return-object p0
.end method

.method private static writeEnumWithNull(Landroid/os/Parcel;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 258
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 261
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getKeyId()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->keyId:J

    return-wide v0
.end method

.method public getPrimaryUserId()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->primaryUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    return v0
.end method

.method public getSignatureTimestamp()Ljava/util/Date;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->signatureTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nresult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nprimaryUserId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->primaryUserId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nuserIds: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nkeyId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->keyId:J

    invoke-static {v2, v3}, Lorg/openintents/openpgp/util/OpenPgpUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAutocryptPeerResult(Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;)Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 12

    .line 240
    new-instance v11, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    iget v1, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    iget-object v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->primaryUserId:Ljava/lang/String;

    iget-wide v3, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->keyId:J

    iget-object v5, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/List;

    iget-object v6, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->confirmedUserIds:Ljava/util/List;

    iget-object v7, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    iget-object v9, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->signatureTimestamp:Ljava/util/Date;

    const/4 v8, 0x0

    move-object v0, v11

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(ILjava/lang/String;JLjava/util/List;Ljava/util/List;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/lang/Boolean;Ljava/util/Date;Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;)V

    return-object v11
.end method

.method public withSignatureOnlyFlag(Z)Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    new-instance v11, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    iget v1, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    iget-object v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->primaryUserId:Ljava/lang/String;

    iget-wide v3, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->keyId:J

    iget-object v5, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/List;

    iget-object v6, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->confirmedUserIds:Ljava/util/List;

    iget-object v7, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->signatureTimestamp:Ljava/util/Date;

    iget-object v10, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->autocryptPeerentityResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(ILjava/lang/String;JLjava/util/List;Ljava/util/List;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/lang/Boolean;Ljava/util/Date;Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;)V

    return-object v11
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 p2, 0x5

    .line 149
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 156
    iget v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 159
    iget-object v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->primaryUserId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-wide v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->keyId:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    iget-object v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 164
    iget-object v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    invoke-static {p1, v2}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->writeEnumWithNull(Landroid/os/Parcel;Ljava/lang/Enum;)V

    .line 165
    iget-object v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->confirmedUserIds:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 167
    iget-object v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->signatureTimestamp:Ljava/util/Date;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->signatureTimestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    :goto_0
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->autocryptPeerentityResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    invoke-static {p1, v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->writeEnumWithNull(Landroid/os/Parcel;Ljava/lang/Enum;)V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int/2addr v0, v1

    .line 177
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 178
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    add-int/2addr v1, v0

    .line 179
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
