.class final Lorg/openintents/ssh/authentication/SshAuthenticationApiError$1;
.super Ljava/lang/Object;
.source "SshAuthenticationApiError.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/ssh/authentication/SshAuthenticationApiError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/openintents/ssh/authentication/SshAuthenticationApiError;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lorg/openintents/ssh/authentication/SshAuthenticationApiError$1;->createFromParcel(Landroid/os/Parcel;)Lorg/openintents/ssh/authentication/SshAuthenticationApiError;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/openintents/ssh/authentication/SshAuthenticationApiError;
    .locals 1

    .line 61
    new-instance v0, Lorg/openintents/ssh/authentication/SshAuthenticationApiError;

    invoke-direct {v0, p1}, Lorg/openintents/ssh/authentication/SshAuthenticationApiError;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lorg/openintents/ssh/authentication/SshAuthenticationApiError$1;->newArray(I)[Lorg/openintents/ssh/authentication/SshAuthenticationApiError;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/openintents/ssh/authentication/SshAuthenticationApiError;
    .locals 0

    .line 66
    new-array p1, p1, [Lorg/openintents/ssh/authentication/SshAuthenticationApiError;

    return-object p1
.end method
