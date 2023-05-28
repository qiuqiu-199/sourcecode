.class Lcom/google/android/gms/internal/zzbpr$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbrd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbqq$zza<",
        "Lcom/google/android/gms/internal/zzbpq;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzcfV:Lcom/google/android/gms/internal/zzbpr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$5;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/zzbpq;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbpr$5;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpq;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpq;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbpq;->zzZh()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbpq;->zzZi()Lcom/google/android/gms/internal/zzbrd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpr$5;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbpr;->zzh(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpr$zzd;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbpr$5;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$5;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbps;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/zzbpr$zzd;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbps;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbpq;->zzZg()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzbrd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbpr$5;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzbpr;->zzh(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpr$zzd;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$5;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$5;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbps;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Lcom/google/android/gms/internal/zzbpr$zzd;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbps;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
