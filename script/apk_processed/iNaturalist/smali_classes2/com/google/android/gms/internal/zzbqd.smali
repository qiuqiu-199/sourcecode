.class public Lcom/google/android/gms/internal/zzbqd;
.super Lcom/google/android/gms/internal/zzbqe;


# instance fields
.field private final zzcgJ:Lcom/google/android/gms/internal/zzboy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbqe$zza;->zzcgN:Lcom/google/android/gms/internal/zzbqe$zza;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzbqe;-><init>(Lcom/google/android/gms/internal/zzbqe$zza;Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbqd;->zzcgJ:Lcom/google/android/gms/internal/zzboy;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Merge { path=%s, source=%s, children=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqd;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqd;->zzZy()Lcom/google/android/gms/internal/zzbqf;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqd;->zzcgJ:Lcom/google/android/gms/internal/zzboy;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzZx()Lcom/google/android/gms/internal/zzboy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzcgJ:Lcom/google/android/gms/internal/zzboy;

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqe;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzcgJ:Lcom/google/android/gms/internal/zzboy;

    new-instance v2, Lcom/google/android/gms/internal/zzbph;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/zzbrq;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzboy;->zzg(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboy;->zzYp()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbqg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqd;->zzcgL:Lcom/google/android/gms/internal/zzbqf;

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboy;->zzYp()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzbqg;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqd;->zzcgL:Lcom/google/android/gms/internal/zzbqf;

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzbqd;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbrq;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzbqd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzcgL:Lcom/google/android/gms/internal/zzbqf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqd;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqd;->zzcgJ:Lcom/google/android/gms/internal/zzboy;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbqd;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V

    return-object p1

    :cond_3
    return-object v1
.end method
