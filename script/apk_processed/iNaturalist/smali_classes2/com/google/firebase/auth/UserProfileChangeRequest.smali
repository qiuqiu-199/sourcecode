.class public Lcom/google/firebase/auth/UserProfileChangeRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaQN:Ljava/lang/String;

.field public final zzaiI:I

.field private zzakb:Ljava/lang/String;

.field private zzbXS:Z

.field private zzbXT:Z

.field private zzbXU:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/zza;

    invoke-direct {v0}, Lcom/google/firebase/auth/zza;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/UserProfileChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzaiI:I

    iput-object p2, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzakb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzaQN:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzbXS:Z

    iput-boolean p5, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzbXT:Z

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzbXU:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzakb:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzbXU:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/auth/zza;->zza(Lcom/google/firebase/auth/UserProfileChangeRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzVL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzaQN:Ljava/lang/String;

    return-object v0
.end method

.method public zzVM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzbXS:Z

    return v0
.end method

.method public zzVN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzbXT:Z

    return v0
.end method
