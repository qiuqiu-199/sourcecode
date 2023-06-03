.class public Lcom/google/android/gms/internal/zzaff;
.super Ljava/lang/Object;


# instance fields
.field private final zzaJC:Lcom/google/android/gms/internal/zzbxi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbxi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbxi;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaff;->zzaJC:Lcom/google/android/gms/internal/zzbxi;

    return-void
.end method

.method public static zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzaff;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    const-wide/32 v4, 0x5265c00

    cmp-long v6, p2, v4

    if-gtz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v6, p4, v2

    if-ltz v6, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v2, p4, v4

    if-gtz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v2, p2, p4

    if-gtz v2, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzaff;

    invoke-static/range {p0 .. p5}, Lcom/google/android/gms/internal/zzaff;->zzb(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbxi;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaff;-><init>(Lcom/google/android/gms/internal/zzbxi;)V

    return-object v0
.end method

.method private static zzb(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbxi;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbxi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbxi;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzbxi;->zzcsS:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    :cond_0
    iput-wide p2, v0, Lcom/google/android/gms/internal/zzbxi;->zzaKx:J

    iput-wide p4, v0, Lcom/google/android/gms/internal/zzbxi;->zzcuu:J

    return-object v0
.end method

.method public static zzg(JJ)Lcom/google/android/gms/internal/zzaff;
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p0, v0

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v4, p2, v0

    if-ltz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v0, p0, p2

    if-gtz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzaff;

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-wide v3, p0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaff;->zzb(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbxi;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaff;-><init>(Lcom/google/android/gms/internal/zzbxi;)V

    return-object v0
.end method


# virtual methods
.method public zzAf()Lcom/google/android/gms/internal/zzbxi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaff;->zzaJC:Lcom/google/android/gms/internal/zzbxi;

    return-object v0
.end method
