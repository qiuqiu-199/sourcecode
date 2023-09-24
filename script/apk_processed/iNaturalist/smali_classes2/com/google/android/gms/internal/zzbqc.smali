.class public Lcom/google/android/gms/internal/zzbqc;
.super Lcom/google/android/gms/internal/zzbqe;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbqe$zza;->zzcgP:Lcom/google/android/gms/internal/zzbqe$zza;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzbqe;-><init>(Lcom/google/android/gms/internal/zzbqe$zza;Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ListenComplete { path=%s, source=%s }"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqc;->zzZy()Lcom/google/android/gms/internal/zzbqf;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqe;
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbqc;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzbqc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqc;->zzcgL:Lcom/google/android/gms/internal/zzbqf;

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzbqc;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzbqc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqc;->zzcgL:Lcom/google/android/gms/internal/zzbqf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqc;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzbqc;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;)V

    return-object p1
.end method
