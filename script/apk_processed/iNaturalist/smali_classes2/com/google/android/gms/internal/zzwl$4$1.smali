.class Lcom/google/android/gms/internal/zzwl$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/LocationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzwl$4;->zzd(Lcom/google/android/gms/internal/zzwp;)Lcom/google/android/gms/awareness/snapshot/LocationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamv:Lcom/google/android/gms/internal/zzwp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzwl$4;Lcom/google/android/gms/internal/zzwp;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzwl$4$1;->zzamv:Lcom/google/android/gms/internal/zzwp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwl$4$1;->zzamv:Lcom/google/android/gms/internal/zzwp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzwp;->zzsb()Lcom/google/android/gms/internal/zzwk;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzwl$4$1;->zzamv:Lcom/google/android/gms/internal/zzwp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzwp;->zzsb()Lcom/google/android/gms/internal/zzwk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzwk;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwl$4$1;->zzamv:Lcom/google/android/gms/internal/zzwp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzwp;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
