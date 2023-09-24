.class public Lcom/google/android/gms/internal/zzbgc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbcq;


# instance fields
.field private final zzbLw:Lcom/google/android/gms/internal/zzbaz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbaz;->zzcd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbaz;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbgc;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbaz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbgc;->zzbLw:Lcom/google/android/gms/internal/zzbaz;

    return-void
.end method


# virtual methods
.method public varargs zzb(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbcd;",
            "[",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length p2, p2

    if-nez p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbgc;->zzbLw:Lcom/google/android/gms/internal/zzbaz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbaz;->zzPV()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/google/android/gms/internal/zzbjb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_1
    return-object p1
.end method
