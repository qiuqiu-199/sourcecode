.class final Lcom/google/android/gms/location/zzf$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/location/zzd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/zzd;

    check-cast p2, Lcom/google/android/gms/location/zzd;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/location/zzf$1;->zza(Lcom/google/android/gms/location/zzd;Lcom/google/android/gms/location/zzd;)I

    move-result p1

    return p1
.end method

.method public zza(Lcom/google/android/gms/location/zzd;Lcom/google/android/gms/location/zzd;)I
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/location/zzd;->zzBW()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/location/zzd;->zzBW()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/zzd;->zzIc()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/location/zzd;->zzIc()I

    move-result p2

    if-ne p1, p2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-ge p1, p2, :cond_3

    const/4 v2, -0x1

    :cond_3
    :goto_0
    return v2
.end method