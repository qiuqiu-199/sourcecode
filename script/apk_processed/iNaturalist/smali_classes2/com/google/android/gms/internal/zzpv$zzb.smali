.class Lcom/google/android/gms/internal/zzpv$zzb;
.super Lcom/google/android/gms/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzl<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzYs:Lcom/google/android/gms/internal/zzpv$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpv$zza<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final zzaG:Lcom/google/android/gms/internal/zzn$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzn$zzb<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzpv$zza;Lcom/google/android/gms/internal/zzn$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpv$zza<",
            "TT;>;",
            "Lcom/google/android/gms/internal/zzn$zzb<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzpv$zzb$1;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzpv$zzb$1;-><init>(Lcom/google/android/gms/internal/zzn$zzb;Lcom/google/android/gms/internal/zzpv$zza;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/zzl;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzn$zza;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpv$zzb;->zzYs:Lcom/google/android/gms/internal/zzpv$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpv$zzb;->zzaG:Lcom/google/android/gms/internal/zzn$zzb;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpv$zzb;)Lcom/google/android/gms/internal/zzpv$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->zzYs:Lcom/google/android/gms/internal/zzpv$zza;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzpv$zzb;)Lcom/google/android/gms/internal/zzn$zzb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->zzaG:Lcom/google/android/gms/internal/zzn$zzb;

    return-object p0
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/internal/zzj;)Lcom/google/android/gms/internal/zzn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzj;",
            ")",
            "Lcom/google/android/gms/internal/zzn<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzj;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzy;->zzb(Lcom/google/android/gms/internal/zzj;)Lcom/google/android/gms/internal/zzb$zza;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzb$zza;)Lcom/google/android/gms/internal/zzn;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpv$zzb;->zzi(Ljava/io/InputStream;)V

    return-void
.end method

.method protected zzi(Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzpv$zzb$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzpv$zzb$2;-><init>(Lcom/google/android/gms/internal/zzpv$zzb;Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpn;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzqm;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzpv$zzb$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzpv$zzb$3;-><init>(Lcom/google/android/gms/internal/zzpv$zzb;Lcom/google/android/gms/internal/zzqm;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzqm;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method
