.class final Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;
.super Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;
.source "AutoValue_AuthenticationData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(JLjava/lang/Long;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    .line 30
    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;-><init>(JLjava/lang/Long;Ljava/util/List;I)V

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;---><init>(JLjava/lang/Long;Ljava/util/List;I)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 35
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;->getAuthenticationMasterKeyId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;->getAuthenticationSubKeyId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;->getAllowedAuthenticationKeyIds()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 38
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;->getHashAlgorithm()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
