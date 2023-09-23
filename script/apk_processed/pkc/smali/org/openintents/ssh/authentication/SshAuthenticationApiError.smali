.class public Lorg/openintents/ssh/authentication/SshAuthenticationApiError;
.super Ljava/lang/Object;
.source "SshAuthenticationApiError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/openintents/ssh/authentication/SshAuthenticationApiError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mError:I

.field private mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lorg/openintents/ssh/authentication/SshAuthenticationApiError$1;

    invoke-direct {v0}, Lorg/openintents/ssh/authentication/SshAuthenticationApiError$1;-><init>()V

    sput-object v0, Lorg/openintents/ssh/authentication/SshAuthenticationApiError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lorg/openintents/ssh/authentication/SshAuthenticationApiError;->mError:I

    .line 50
    iput-object p2, p0, Lorg/openintents/ssh/authentication/SshAuthenticationApiError;->mMessage:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/openintents/ssh/authentication/SshAuthenticationApiError;->mError:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openintents/ssh/authentication/SshAuthenticationApiError;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 85
    iget p2, p0, Lorg/openintents/ssh/authentication/SshAuthenticationApiError;->mError:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object p2, p0, Lorg/openintents/ssh/authentication/SshAuthenticationApiError;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
