.class public Lcom/google/android/gms/internal/zzbhn;
.super Lcom/google/android/gms/internal/zzbhq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbhq;-><init>()V

    return-void
.end method


# virtual methods
.method protected zzf(DD)Z
    .locals 1

    cmpl-double v0, p1, p3

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
