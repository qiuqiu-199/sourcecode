.class public Lcom/google/android/gms/internal/zzaej;
.super Ljava/lang/Object;


# instance fields
.field private final zzaJf:Lcom/google/android/gms/internal/zzbwn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbwn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbwn;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaej;->zzaJf:Lcom/google/android/gms/internal/zzbwn;

    return-void
.end method

.method private static zza(IJI)Lcom/google/android/gms/internal/zzbwn;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbwn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwn;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzbwn;->zzcsS:I

    iput-wide p1, v0, Lcom/google/android/gms/internal/zzbwn;->zzcsT:J

    packed-switch p0, :pswitch_data_0

    const-string p1, "AudioStateFenceStub"

    const-string p2, "Unknown trigger type=%s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/zzcf;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    iput p3, v0, Lcom/google/android/gms/internal/zzbwn;->zzcta:I

    goto :goto_0

    :pswitch_1
    iput p3, v0, Lcom/google/android/gms/internal/zzbwn;->zzcsZ:I

    goto :goto_0

    :pswitch_2
    iput p3, v0, Lcom/google/android/gms/internal/zzbwn;->zzcsY:I

    goto :goto_0

    :pswitch_3
    iput p3, v0, Lcom/google/android/gms/internal/zzbwn;->zzcsX:I

    goto :goto_0

    :pswitch_4
    iput p3, v0, Lcom/google/android/gms/internal/zzbwn;->zzcsW:I

    goto :goto_0

    :pswitch_5
    iput p3, v0, Lcom/google/android/gms/internal/zzbwn;->zzcsV:I

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static zzdE(I)Lcom/google/android/gms/internal/zzaej;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzaej;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, p0}, Lcom/google/android/gms/internal/zzaej;->zza(IJI)Lcom/google/android/gms/internal/zzbwn;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaej;-><init>(Lcom/google/android/gms/internal/zzbwn;)V

    return-object v0
.end method

.method public static zzzW()Lcom/google/android/gms/internal/zzaej;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzaej;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzaej;->zza(IJI)Lcom/google/android/gms/internal/zzbwn;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaej;-><init>(Lcom/google/android/gms/internal/zzbwn;)V

    return-object v0
.end method

.method public static zzzX()Lcom/google/android/gms/internal/zzaej;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzaej;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzaej;->zza(IJI)Lcom/google/android/gms/internal/zzbwn;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaej;-><init>(Lcom/google/android/gms/internal/zzbwn;)V

    return-object v0
.end method


# virtual methods
.method public zzzY()Lcom/google/android/gms/internal/zzbwn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaej;->zzaJf:Lcom/google/android/gms/internal/zzbwn;

    return-object v0
.end method
