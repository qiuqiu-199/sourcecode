.class Lcom/google/android/gms/internal/zzpv$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzn$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpv$zzb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzpv$zza;Lcom/google/android/gms/internal/zzn$zzb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzYt:Lcom/google/android/gms/internal/zzn$zzb;

.field final synthetic zzYu:Lcom/google/android/gms/internal/zzpv$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzn$zzb;Lcom/google/android/gms/internal/zzpv$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpv$zzb$1;->zzYt:Lcom/google/android/gms/internal/zzn$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpv$zzb$1;->zzYu:Lcom/google/android/gms/internal/zzpv$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzs;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpv$zzb$1;->zzYt:Lcom/google/android/gms/internal/zzn$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb$1;->zzYu:Lcom/google/android/gms/internal/zzpv$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpv$zza;->zzji()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzn$zzb;->zzb(Ljava/lang/Object;)V

    return-void
.end method
