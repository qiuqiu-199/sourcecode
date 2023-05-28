.class public Lcom/google/android/gms/internal/zzaii;
.super Lcom/google/android/gms/internal/zzaiz$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaii$zza;
    }
.end annotation


# instance fields
.field private final zzaHE:I

.field private final zzaNF:Lcom/google/android/gms/drive/events/zzh;

.field private final zzaNG:Lcom/google/android/gms/internal/zzaii$zza;

.field private final zzaNH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;ILcom/google/android/gms/drive/events/zzh;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaiz$zza;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaii;->zzaNH:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/internal/zzaii;->zzaHE:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaii;->zzaNF:Lcom/google/android/gms/drive/events/zzh;

    new-instance p3, Lcom/google/android/gms/internal/zzaii$zza;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lcom/google/android/gms/internal/zzaii$zza;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/google/android/gms/internal/zzaii$1;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaii;->zzaNG:Lcom/google/android/gms/internal/zzaii$zza;

    return-void
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/internal/zzajp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzajp;->zzBi()Lcom/google/android/gms/drive/events/DriveEvent;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/zzaii;->zzaHE:I

    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaii;->zzaNH:Ljava/util/List;

    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaii;->zzaNG:Lcom/google/android/gms/internal/zzaii$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaii;->zzaNF:Lcom/google/android/gms/drive/events/zzh;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzaii$zza;->zza(Lcom/google/android/gms/drive/events/zzh;Lcom/google/android/gms/drive/events/DriveEvent;)V

    return-void
.end method

.method public zzeQ(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaii;->zzaNH:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzeR(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaii;->zzaNH:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
