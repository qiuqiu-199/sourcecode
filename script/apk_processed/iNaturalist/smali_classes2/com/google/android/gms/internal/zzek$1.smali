.class Lcom/google/android/gms/internal/zzek$1;
.super Lcom/google/android/gms/internal/zzek$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;)Lcom/google/android/gms/internal/zzet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzek$zza<",
        "Lcom/google/android/gms/internal/zzet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zztd:Ljava/lang/String;

.field final synthetic zztf:Landroid/content/Context;

.field final synthetic zzzO:Lcom/google/android/gms/internal/zzeg;

.field final synthetic zzzP:Lcom/google/android/gms/internal/zzka;

.field final synthetic zzzQ:Lcom/google/android/gms/internal/zzek;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzek$1;->zzzQ:Lcom/google/android/gms/internal/zzek;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzek$1;->zztf:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzek$1;->zzzO:Lcom/google/android/gms/internal/zzeg;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzek$1;->zztd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzek$1;->zzzP:Lcom/google/android/gms/internal/zzka;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzek$zza;-><init>(Lcom/google/android/gms/internal/zzek;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzew;)Lcom/google/android/gms/internal/zzet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek$1;->zztf:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzek$1;->zzzO:Lcom/google/android/gms/internal/zzeg;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzek$1;->zztd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzek$1;->zzzP:Lcom/google/android/gms/internal/zzka;

    const v6, 0x9d2290

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzew;->createBannerAdManager(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;I)Lcom/google/android/gms/internal/zzet;

    move-result-object p1

    return-object p1
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzew;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzek$1;->zza(Lcom/google/android/gms/internal/zzew;)Lcom/google/android/gms/internal/zzet;

    move-result-object p1

    return-object p1
.end method

.method public zzeI()Lcom/google/android/gms/internal/zzet;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek$1;->zzzQ:Lcom/google/android/gms/internal/zzek;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzek;->zzb(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzeb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzek$1;->zztf:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzek$1;->zzzO:Lcom/google/android/gms/internal/zzeg;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzek$1;->zztd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzek$1;->zzzP:Lcom/google/android/gms/internal/zzka;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzeb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;I)Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzek$1;->zzzQ:Lcom/google/android/gms/internal/zzek;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzek$1;->zztf:Landroid/content/Context;

    const-string v2, "banner"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzek;->zza(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfl;-><init>()V

    return-object v0
.end method

.method public synthetic zzeJ()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzek$1;->zzeI()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    return-object v0
.end method
